# Scalyr Chef Recipes

Official Chef recipes to install the Scalyr Agent.

This is currently in **BETA** release.  We are stil investigating the best
way to support Chef users.  Please send your feedback to support@scalyr.com.

Existing recipes have only been tested on chef 12.

The source code for this cookbook is available
[here](https://github.com/scalyr/scalyr-chef)

# Recipes

## default

Installs, configures, enables at boot, and starts the scalyr agent service.

## agent

Same as default

## install

Installs the agent, but does not update configuration or start the agent service

## configure

Updates the config files of the agent to match the attributes assigned to a
node.  The agent will automatically detect new, modified, or deleted files so
you don't need to restart it after a configuration change.

## start

Enables the agent to start at boot, and starts the scalyr agent service.

# Usage

Add the scalyr_agent cookbook to your Chef server:

    knife cookbook site install scalyr_agent
    knife cookbook upload scalyr_agent

The scalyr_agent cookbook supports the following attributes, which can be
specified in a role, an environment or via other methods provided by chef such
as on the command line.

* api_key - Your scalyr write log API key.  You can find your API key
  [here](https://www.scalyr.com/keys).
* logs - A hash that maps glob patterns of the files you want to to monitor with
  a Scalyr log parser.
* server_attributes - A map of user specified server attributes that will be
  uploaded along with each log message.
* scalyr_server - The url of the scalyr server to upload to.  If not specified
  this defaults to our US server.

Here is an example role showing a sample configuration for a simple webserver:

    name 'webserver'
    description 'Installs the nginx webserver and monitors logs with scalyr'
    run_list(
      'nginx',
      'scalyr_agent::agent'
    )
    default_attributes(
      'scalyr_agent' => {
        'api_key' => 'YOUR_API_KEY_GOES_HERE',
        'logs' => [
          {
            'path'=> '/var/log/nginx/access.log',
            'attributes' => {
              'parser' => 'nginx-access',
              'serverType' => 'nginx'
            },
            'sampling_rules' => [
              { 'match_expression' => '499', 'sampling_rate' => 0.05 },
            ]
          },
          {
            'path' => '/var/log/nginx/error.log',
            'attributes' => {
              'parser' => 'nginx-error',
              'serverType' => 'nginx'
            }
          }
        ],
        'monitors' => [
          { 'module' => 'scalyr_agent.builtin_monitors.nginx_monitor', 'status_url' => 'http://localhost/nginx_stub_status' }
        ],
        'server_attributes' => {
          'tier' => 'webserver'
        }
      }
    )

This role will install nginx and the scalyr agent, and monitor all log files in
the /var/log/nginx directory.

If you will run the scalyr_agent on all your nodes you can also set up a 'base'
role so that you don't need to specify the API key each time:

    name 'base'
    description 'base role for nodes running the scalyr-agent'
    run_list(
      'scalyr_agent::agent'
    )
    default_attributes(
      'scalyr_agent' => {
        'api_key' => 'YOUR_API_KEY_GOES_HERE'
      }
    )

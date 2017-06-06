name 'scalyr_agent'
maintainer 'Scalyr'
maintainer_email 'support@scalyr.com'
license 'Apache 2.0'
description 'Installs, configures and runs the scalyr agent'
long_description 'Installs, configures and runs the scalyr agent'
version '0.1.1'

recipe 'scalyr_agent::default', 'Installs, configures and starts the scalyr agent'
recipe 'scalyr_agent::agent', 'Same as scalyr_agent::default'
recipe 'scalyr_agent::install', 'Installs the scalyr agent'
recipe 'scalyr_agent::configure', 'Configures the scalyr agent'
recipe 'scalyr_agent::start', 'Starts the scalyr agent'

issues_url 'https://github.com/scalyr/scalyr-chef/issues' if respond_to?(:issues_url)
source_url 'https://github.com/scalyr/scalyr-chef' if respond_to?(:source_url)

chef_version '>= 12.7'

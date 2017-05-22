name 'scalyr_agent'
maintainer 'Scalyr'
maintainer_email 'admin@scalyr.com'
license 'Apache 2.0'
description 'Installs/Configures scalyr_agent'
long_description 'Installs/Configures scalyr_agent'
version '0.1.0'

recipe 'scalyr_agent::default', 'Installs, configures and starts the scalyr agent'
recipe 'scalyr_agent::agent', 'Same as scalyr_agent::default'
recipe 'scalyr_agent::install', 'Installs the scalyr agent'
recipe 'scalyr_agent::configure', 'Configures the scalyr agent'
recipe 'scalyr_agent::start', 'Starts the scalyr agent'

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
# issues_url 'https://github.com/<insert_org_here>/scalyr_agent/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
# source_url 'https://github.com/<insert_org_here>/scalyr_agent' if respond_to?(:source_url)

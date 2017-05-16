name 'scalyr_agent'
maintainer 'Scalyr'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures scalyr_agent'
long_description 'Installs/Configures scalyr_agent'
version '0.1.0'

#depends 'apt'
#depends 'yum'

recipe 'scalyr_agent::install', 'Installs the scalyr agent'
recipe 'scalyr_agent::configure', 'Configures the scalyr agent'

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
# issues_url 'https://github.com/<insert_org_here>/scalyr_agent/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
# source_url 'https://github.com/<insert_org_here>/scalyr_agent' if respond_to?(:source_url)

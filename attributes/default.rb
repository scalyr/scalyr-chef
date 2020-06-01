default['scalyr_agent']['packages']['base_url'] = 'https://www.scalyr.com/scalyr-repo/stable/latest'
default['scalyr_agent']['packages']['deb'] = 'scalyr-repo-bootstrap_1.2.2_all.deb'
default['scalyr_agent']['packages']['rpm'] = 'scalyr-repo-bootstrap-1.2.2-1.noarch.rpm'
default['scalyr_agent']['packages']['rpm_alt'] = 'scalyr-repo-bootstrap-1.2.2-1.alt.noarch.rpm'

default['scalyr_agent']['api_key'] = nil

default['scalyr_agent']['scalyr_server'] = nil

default['scalyr_agent']['hostname'] = nil

default['scalyr_agent']['logs'] = []
default['scalyr_agent']['agent_settings'] = {}
default['scalyr_agent']['server_attributes'] = {}
default['scalyr_agent']['monitors'] = []

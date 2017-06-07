node.default['scalyr_agent']['agent_settings']['scalyr_server'] = node['scalyr_agent']['scalyr_server']

template '/etc/scalyr-agent-2/agent.json' do
  source 'agent.json.erb'
  variables(lazy do
    {
      agent_settings: node['scalyr_agent']['agent_settings'].reject{|k,v| v.nil?}
    }
  end)
end

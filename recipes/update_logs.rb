include_recipe "scalyr_agent::service"

template '/etc/scalyr-agent-2/agent.d/logs.json' do
  source 'logs.json.erb'
  variables({
    :logs => node['scalyr_agent']['logs']
  })
  notifies :restart, "service[scalyr-agent-2]"
end

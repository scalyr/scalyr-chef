include_recipe "scalyr_agent::service"

template '/etc/scalyr-agent-2/agent.d/api_key.json' do
  source 'api_key.json.erb'
  variables(
    :api_key => node['scalyr_agent']['api_key']
  )
  notifies :restart, "service[scalyr-agent-2]"
end


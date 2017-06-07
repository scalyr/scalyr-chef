include_recipe "scalyr_agent::service"

template '/etc/scalyr-agent-2/agent.d/monitors.json' do
  source 'monitors.json.erb'
  notifies :restart, "service[scalyr-agent-2]"
end

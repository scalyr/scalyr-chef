
template '/etc/scalyr-agent-2/agent.d/monitors.json' do
  source 'monitors.json.erb'
  variables({
    :monitors => node['scalyr_agent']['monitors']
  })
end

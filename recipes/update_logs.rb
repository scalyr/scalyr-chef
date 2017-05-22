
template '/etc/scalyr-agent-2/agent.d/logs.json' do
  source 'logs.json.erb'
  variables({
    :logs => node['scalyr_agent']['logs']
  })
end

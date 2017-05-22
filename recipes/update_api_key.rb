
template '/etc/scalyr-agent-2/agent.d/api_key.json' do
  source 'api_key.json.erb'
  variables(
    :api_key => node['scalyr_agent']['api_key']
  )
end


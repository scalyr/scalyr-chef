
if node.default['scalyr_agent']['server_attributes'].nil? then
  if node['scalyr_agent']['hostname'] then
    node.default['scalyr_agent']['server_attributes'] = { "serverHost" => node['scalyr_agent']['hostname'] }
  end
else
  if node['scalyr_agent']['hostname'] then
    node.default['scalyr_agent']['server_attributes']['serverHost'] = node['scalyr_agent']['hostname']
  end
end

template '/etc/scalyr-agent-2/agent.d/server_attributes.json' do
  source 'server_attributes.json.erb'
  variables( {
    :server_attributes => node['scalyr_agent']['server_attributes']
  })
end

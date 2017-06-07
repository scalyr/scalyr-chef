service 'scalyr-agent-2' do
  supports :start => true, :stop => true
  action :enable
end

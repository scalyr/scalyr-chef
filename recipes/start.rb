include_recipe "scalyr_agent::service"

ruby_block "start scalyr_agent" do
  block { true }
  notifies :start, "service[scalyr-agent-2]"
end

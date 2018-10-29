
%w[scalyr-agent-2 scalyr-repo scalyr-repo-bootstrap].each do |pkg|
  package pkg do
    action :remove
  end
end

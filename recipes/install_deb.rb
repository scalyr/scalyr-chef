%w[scalyr-repo scalyr-repo-bootstrap].each do |pkg|
  apt_package pkg do
    action :remove
  end
end

remote_file '/tmp/scalyr-repo-bootstrap_1.2.1_all.deb' do
  source 'https://www.scalyr.com/scalyr-repo/stable/latest/scalyr-repo-bootstrap_1.2.1_all.deb'
end

dpkg_package 'scalyr-repo-bootstrap' do
  source '/tmp/scalyr-repo-bootstrap_1.2.1_all.deb'
  action :install
end

apt_update 'update' do
  action :update
  ignore_failure true
end


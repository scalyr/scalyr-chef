%w[scalyr-repo scalyr-repo-bootstrap].each do |pkg|
  apt_package pkg do
    action :remove
  end
end

deb_file = node['scalyr_agent']['packages']['deb']

remote_file "/tmp/#{deb_file}" do
  source "#{node['scalyr_agent']['packages']['base_url']}/#{deb_file}"
end

dpkg_package 'scalyr-repo-bootstrap' do
  source "/tmp/#{deb_file}"
  action :install
end

apt_update 'update' do
  action :update
  ignore_failure true
end

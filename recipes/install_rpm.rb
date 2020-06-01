
rpm_package ['scalyr-repo'] do
  action :remove
  ignore_failure true
end

rpm_package ['scalyr-repo-bootstrap'] do
  action :remove
  ignore_failure true
end

rpm_file =
  if node['platform_version'].to_i < 6 && node['platform_family'] != 'amazon'
    node['scalyr_agent']['packages']['rpm_alt']
  else
    node['scalyr_agent']['packages']['rpm']
  end

remote_file "/tmp/#{rpm_file}" do
  source "#{node['scalyr_agent']['packages']['base_url']}/#{rpm_file}"
end

yum_package 'scalyr-repo-bootstrap' do
  source "/tmp/#{rpm_file}"
  action :install
  flush_cache [ :after ]
end


rpm_package ['scalyr-repo', 'scalyr-repo-bootstrap'] do
  action :remove
  ignore_failure true
end

rpm_file =
  if node['platform_version'].to_i < 6
    'scalyr-repo-bootstrap-1.2.1-1.alt.noarch.rpm'
  else
    'scalyr-repo-bootstrap-1.2.1-1.noarch.rpm'
  end

remote_file "/tmp/#{rpm_file}" do
  source "https://www.scalyr.com/scalyr-repo/stable/latest/#{rpm_file}"
end

rpm_package 'scalyr-repo-bootstrap' do
  source "/tmp/#{rpm_file}"
  action :install
end


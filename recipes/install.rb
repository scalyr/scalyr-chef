
case node['platform_family']
  when 'debian'
    include_recipe 'scalyr_agent::install_deb'
  when 'rhel'
    include_recipe 'scalyr_agent::install_rpm'
end

package 'scalyr-repo'
package 'scalyr-agent-2'


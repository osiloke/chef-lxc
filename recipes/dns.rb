hosts = search(:virtual_machines)
template '/etc/lxc-hosts.zone' do
  source 'lxc-hosts.zone.erb'
  variables :hosts => hosts
  action :create
  mode '0644'
end

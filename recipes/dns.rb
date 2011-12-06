
template '/etc/lxc-hosts.zone' do
  source 'lxc-hosts.zone.erb'
  variables :hosts => search(:vms,nil)
  action :create
  mode '0644'
end

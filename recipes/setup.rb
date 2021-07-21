package 'tree' do
  action :install
end

package 'nano'

package 'git' do
  action :install
end

package 'ntp'

file '/etc/motd' do
  content 'This server is the property of Crina
  HOSTNAME: localhost.localdomain
  IPADDRESS: 10.0.2.15
  CPU: 1896.003
  MEMORY: 1016860
'
  action :create
  owner 'root'
  group 'root'
end

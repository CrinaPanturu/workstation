package 'tree' do
  action :install
end

package 'nano'

package 'git' do
  action :install
end

package 'ntp'

#node['ipaddress']
#node['memory']['total']

# print statement 'I have 4 apples'
apple_count = 4

puts "I have #{apple_count} apples"

file '/etc/motd' do
  content "This server is the property of Crina
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}
"
  action :create
  owner 'root'
  group 'root'
end

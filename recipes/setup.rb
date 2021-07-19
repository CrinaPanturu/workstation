package 'tree' do
  action :install
end

package 'nano'

package 'git' do
  action :install
end

package 'ntp'

file '/file/motd' do
  content 'This server is the property of Crina'
  action :create
  owner 'root'
  group 'root'
end

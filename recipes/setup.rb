package 'nano'

package 'ntp'

package 'git' do
    action :install
end

file '/etc/motd' do
     action :create
     content 'This is the message of the day \n'
     mode '0755'
     owner 'vagrant'
end


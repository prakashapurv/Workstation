package 'nano' do
	action :remove
end

package 'ntp' do
	action :remove
end

package 'git' do
    action :install
end

file '/etc/motd' do
     action :create
     content "This is the message of the day
     Hostname : #{node['hostname']}
     IPAddress: #{node['ipaddress']}
     CPU :      #{node['cpu']['0']['mhz']} MHZ
     Memory :   #{node['memory']['total']}
"
     mode '0755'
     owner 'vagrant'
end


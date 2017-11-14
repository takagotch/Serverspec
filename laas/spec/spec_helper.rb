require 'serverspec'
require 'net/ssh'

set :backend, :ssh

set :host, ENV['TARGET_IP']
set :ssh_options, :user => 'ec2-user', :keys => ['~/.ssh.serverspec.pem']
set :request_pty, true
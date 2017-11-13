#nginx_spec.rb

require 'spec_helper'

descibe package('nginx') do
  it { should be_installed }
end

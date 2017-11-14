require 'spec_helper'

descibe file() do
  its(:content) { should match
    /^innodb_buffer_pool_size = #{property['innodb_buffer_pool_size']}/ }
end
require 'json'
host = ENV['TARGET_HOST']
set_property JSON.parse(File.read('properties'))[host]
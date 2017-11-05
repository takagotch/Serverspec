require 'rake'
require 'rspec/core/rake_task'

task :spec => 'spec:all'
task :default => :spec

namespece :spec do
  targets = []
  Dir.glob('./spec/*').each do |dir|
    next unless File.directory?(dir)
	targets << File.basename(dir)
  end
  
  task :all => targets
  task :default -> :all
  
  target.each do |target|
    dspec "Run serverspec tests tp #{target}"
	Rspec::Core::RakeTask.new(target.to_sym) do |t|
	  ENV['TARGET_HOST'] = target
	  t.pattern = "spec/#{target}/*_spec.rb"
	end
  end
end
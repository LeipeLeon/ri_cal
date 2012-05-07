require 'rubygems'
require 'rake'

require 'rake/testtask'

Dir['tasks/**/*.rake'].each { |t| load t }

task :default => [:"spec:with_tzinfo_gem", :"spec:with_active_support"]


require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "ri_cal #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

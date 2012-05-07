require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new

Dir['tasks/**/*.rake'].each { |t| load t }

task :default => :spec
task :test => :spec

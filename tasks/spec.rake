desc "Run all specs"
RSpec::Core::RakeTask.new do |t|
  t.rspec_opts = ['--options', "spec/spec.opts"]
  t.pattern = 'spec/**/*_spec.rb'
  t.ruby_opts = "-rubygems"
end

namespace :spec do
  desc "Run all specs in the presence of ActiveSupport"
  RSpec::Core::RakeTask.new(:with_active_support) do |t|
    t.rspec_opts = ['--options', "spec/spec.opts"]
    t.pattern = 'spec/**/*_spec.rb'
    t.ruby_opts = "-r #{File.join(File.dirname(__FILE__), *%w[gem_loader load_active_support])}"
  end

  desc "Run all specs in the presence of the tzinfo gem"
  RSpec::Core::RakeTask.new(:with_tzinfo_gem) do |t|
    t.rspec_opts = ['--options', "spec/spec.opts"]
    t.pattern = 'spec/**/*_spec.rb'
    t.ruby_opts = "-r #{File.join(File.dirname(__FILE__), *%w[gem_loader load_tzinfo_gem])}"
  end
end

namespace :performance do
  desc 'Run all benchmarks'
  task :benchmark do
    bench_script = File.join(File.dirname(__FILE__), '..', '/script', 'benchmark_subject')
    bench_file = File.join(File.dirname(__FILE__), '..', '/performance_data', 'benchmarks.out')
    cat = ">"
    FileList[File.join(File.dirname(__FILE__), '..', '/performance', '*')].each do |f|
      cmd = "#{bench_script} #{File.basename(f)} #{cat} #{bench_file}"
      puts cmd
      `#{cmd}`
      cat = '>>'
    end
  end

  desc 'Run all profiles'
  task :profile do
    bench_script = File.join(File.dirname(__FILE__), '..', '/script', 'profile_subject')
    FileList[File.join(File.dirname(__FILE__), '..', '/performance', '*')].each do |f|
      cmd = "#{bench_script} #{File.basename(f)}"
      puts cmd
      `#{cmd}`
    end
  end

end
 
  

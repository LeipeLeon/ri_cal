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
 
  

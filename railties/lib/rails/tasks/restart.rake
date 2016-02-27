desc "Restart app by touching tmp/restart.txt"
task :restart do
  FileUtils.mkdir_p('tmp')
  FileUtils.touch('tmp/restart.txt')
  system 'pkill ruby'
  puts "here"
  Kernel.exec 'rails', 'server'
end

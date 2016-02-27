desc "Restart app by touching tmp/restart.txt"
task :restart do
  FileUtils.mkdir_p('tmp')
  FileUtils.touch('tmp/restart.txt')
  Kernel.exec 'pkill', 'ruby'
  Sleep(4)
  system 'rails server'
end

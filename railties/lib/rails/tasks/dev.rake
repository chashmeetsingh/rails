namespace :dev do
  desc 'Toggle development mode caching on/off'
  task :cache do
    if Dir.exist? 'tmp'
      if File.exist? 'tmp/caching-dev.txt'
        File.delete 'tmp/caching-dev.txt'
        puts 'Development mode is no longer being cached.'
      else
        FileUtils.touch 'tmp/caching-dev.txt'
        puts 'Development mode is now being cached.'
      end
    else
      FileUtils.mkdir_p('tmp')  
    end
    
    FileUtils.touch 'tmp/restart.txt'
  end
end

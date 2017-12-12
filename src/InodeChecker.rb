while(true) 
  stat = File.stat(ARGV[0])
  puts "%d" % stat.ino
  sleep(1)
end


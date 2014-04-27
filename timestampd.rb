# This is a daemon for logging the uptime of the computer
# you can start/stop/restart it or use run to test it

require 'daemons'
PATH="/var/log/"
SLEEPTIME=180

Daemons.run_proc('timestampd.rb') do
  loop do
    str=Time.now.strftime("%Y-%d-%m %H:%M").to_s + "\n"
    file = File.open("#{PATH}timestampd.log", "a")
    file.write(str)
    file.close unless file == nil
    sleep(SLEEPTIME)
    #    p str
  end
end

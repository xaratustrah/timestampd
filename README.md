timestampd
==========

A simple time stamp daemon. Included is a ruby file and a shell script. The ruby script is stand alone and can run under any system with ruby on it (Linux and OSX). 

The shell script is called by **launchctl** under OSX. First copy the property list file into:

`/Library/LaunchDaemons
`

Copy the shell script to

`/opt/local/bin`

Start the daemon as:

`sudo launchctl load -w /Library/LaunchDaemons/timestampd.sh.plist `

The log file will be written to `/var/log/timestampd.log` and you can see it using the program **console** under OSX. You can stop the program by using the `unload` keyword.

Have fun timestamping!

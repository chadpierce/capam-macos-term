#!/usr/bin/env osascript

# launches native macos terminal from ca pam
# by mimicking behavior of putty (a user prompt)
# author: chad
# updated: 2019-01-16

# to make applescript bundle:
# open 'script editor' 
# paste this code, change 'do script' line below
# save as bundle
# copy shell script to applescript.scptd/Contents/Resources/Scripts/shellscript.sh
# run with:
# osascript /PATH/applescript.scptd/Contents/Resources/Scripts/main.scpt <hostname> <port>

# to run: osascript term_launcher.applescript hostname port
#	it will then launch a terminal and prompt for a username, then password

on run argv
	set ssh_host to item 1 of argv
	set ssh_port to item 2 of argv

	#testing - doesn't work
	#set ssh_user to the text returned of (display dialog "Enter the Username to be made an admin:" default answer "") 
	#set ssh_user to do shell script "read -p 'login: ' input ; return $input"
	#set ssh_user to do shell script "/usr/bin/read -p 'login: ' ssh_user ; echo $ssh_user"
	
	#ssh_host
	#ssh_user
	tell application "Terminal"
		do script "/Users/chad/ssh_launcher.sh " & ssh_host & " " & ssh_port
		#use the line below for bundle
		#do script "./z.sh " & ssh_host & " " & ssh_port
	end tell
end run

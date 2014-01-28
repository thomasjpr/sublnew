-- check if app is running.
on appIsRunning(appName)
	tell application "System Events" to (name of processes) contains appName
end appIsRunning

-- If Sublime Text 3is not already running, start it
if appIsRunning("Sublime Text") then
	tell application "System Events"
		tell process "Sublime Text" to click menu item "New File" in menu "File" of menu bar 1
	end tell
	
	-- Activate Sublime to focus on the new window
	tell application "Sublime Text" to activate
else
	tell application "Sublime Text" to activate
end if



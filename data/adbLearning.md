# ADB related commands
</hr>
 	 	  	

## Popular Command ##

[Command](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands) | description
------- | --------
`adb devices` | see list of connected devices through adb
`adb connect <ip>:<port>` | connect devices through ip
`adb connect <device_id>` | connect devices through USB
`adb kill-server`| disconnect all connected devices
`adb logcat` | show device log
`adb logcat -c` | clear all logs in adb terminal
`adb logcat > <fileName>.<extension>` | store device log into a file
`adb logcat > "<path>/<fileName>.<extension>` | store device log into a specific directory
`adb -s <device_id or ip> install "<apk_file_path>/<apkFileName>.apk"` | install any apk from PC to device
`adb -s <device_id or ip> uninstall <native_app_id>` | Uninstall the device app
`adb shell pm uninstall -k --user 0 <package name>` | Forcefully uninstall
`adb -s <device_id/only_ip> reboot` | restart device
`pm list packages \| grep <OEM/Carrier/App Name>` | adb show app list under a specific packages
`adb shell input text "<input_text>"` | Input text from remote device
`adb remount`| put `/system` partition in writable mode. By default `/system` is only readable. It could only be done on rooted device.

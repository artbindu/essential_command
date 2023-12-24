<!-- # ADB related commands -->

[Command](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands) | Description
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
Media Configuration |
`adb shell media` | Get ADB Media command info
Up-Down Volume through ADB |
`adb shell media volume --get`| Get Current volume Info<br>It will show you current volume value & actual volume range like: [0:10]
`adb shell media volume --show  --set <volume value>`| Set Volume with in about volume range
`adb shell input keyevent <event_code>` | Triggered android/remote [key event](./data/keyevents.json) - [Android KeyEvents](https://developer.android.com/reference/android/view/KeyEvent)



<!-- https://gist.github.com/Pulimet/5013acf2cd5b28e55036c82c91bd56d8 -->

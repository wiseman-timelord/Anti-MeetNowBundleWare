# Anti-MsBundleWare
Status: Alpha

### DESCRIPTION:
It does as the name suggests, it disables and removes only the `Meet Now` feature, that is installed into Skype through Windows Update, however, to correctly achieve this, Skype also has to be removed. If you use it, try a multi-messenger alternative, or just re-install a earlier version of Skype. The main thing is `Meet Now` is no-longer in your tray. I didnt test it but possibly you can just use the A001 version, and restart and Skype be ok, I left that available for download. In my case, I didnt have `Skype` installed anyhow, so, burning and destroying, villages to get rid of the `BundleWare` was my protocol.

### REQUIREMENTS:
- Programmed towards and tested upon, Windows 10.

### PREVIEW:
- Version A001 (it did not remove the tray icon, but skype is left alone)...
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
- Version A002 (immediately disables the features, then removes Skype Entirely, thus the `Meet Now` icon in tray is GONE...
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

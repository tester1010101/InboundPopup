# InboundPopup :bell: :headphones:
* :loudspeaker: Scan Windows Firewall Rules to find "Inbound" rules.
* :musical_note: If an "inbound" rule is found, an alert/pop-up is sent to the user.
* :microphone: Best used in scenarios for Group Policy login/out scripts or with the Task Scheduler.
* :saxophone: Task Scheduler: On Event (Microsoft-Windows-Windows Firewall With Advanced Security/Firewall/2004-2005-2006)


![image](https://user-images.githubusercontent.com/91343617/148432069-19c0dde2-24d0-4b47-ba4a-36097ba25396.png) ![image](https://user-images.githubusercontent.com/91343617/148431571-e2b48a5f-b76d-4969-88c8-0242a5112ce7.png)

* &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2004 - A rule has been added to the Windows Defender Firewall exception list.
* &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2005 - A rule has been modified in the Windows Defender Firewall exception list.
* &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2006 - A rule has been deleted in the Windows Defender Firewall exception list.
* &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    If any of these events happens, the above script can be used to send the user a pop-up.
* &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    Requires no external programs and the pop-up can pop instantly when a change is made.

![image](https://user-images.githubusercontent.com/91343617/148432563-e4f5b23f-cbd3-4d4b-9ae6-8060068117ff.png)

![image](https://user-images.githubusercontent.com/91343617/148431419-0e7065d1-6d8c-4d78-be01-4404eb4c837e.png)

![image](https://user-images.githubusercontent.com/91343617/148433379-31221f2b-738d-4b13-a56f-101f2cb2fa7f.png)

* I added the batch script to make it work under "Task Scheduler", thanks to [Stack Overflow](https://stackoverflow.com/questions/665014/my-script-wont-run-under-the-task-scheduler-why).

* Edit the .batch_script to run the \Path\Popup.ps1 then you can add it (run.bat) in Task Scheduler.
* Anytime a rule is found in the inbound section, you'll get a pop-up to verify it, if it's ok, don't make any changes to it.
* Message me for any question/features that you may want me to add-in!

# Instructions :: 
1) Place the Popup.ps1 script somewhere you can access & copy the path.
2) Right-click on "run-ps-startup.bat", Edit.
3) Paste the path to Popup.ps1 inside the batch file 
4) (replace the line after -File) ""%SYSTEMROOT%\System32\GroupPolicy\User\Scripts\Logon\Popup.ps1""
5) Use the path you copied earlier.
6) Schedule a task or a login/out job for the Policy and test the magic!

![image](https://user-images.githubusercontent.com/91343617/148437665-fb12d211-5193-4f30-9d92-6565f859b229.png)

# Purpose
* I kept getting inbound rules added/modified silently in the background and found that annoying. Here's a simple, no download, fix to it. *You can copy/paste the code if that's more convenient.*

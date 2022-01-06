##################################################
#             ~ Inbound Popup v1.2 ~             #
# ._.       ~ Made by: tester1010101 ~       ._. #
# Get all firewall rules from Windows Defender   #
# Firewall with Advanced Security, + gives user  #
#   a popup (when logging in) if new rules are   #
# added to their inbound firewall rules (without #
#   user notification), useful if you forget.    #
#  Best used when configured on a Task Schedule, #
#   or in the Group Policy log-in/out settings.  #
#            github.com/tester1010101/           #
##################################################

$Rules = (netsh advfirewall firewall show rule name=all verbose)
[string]$InboundTEST = ($Rules | Select-String "Direction:                            In")
if ($InboundTEST -match "Direction:                            In") {
    Add-Type -AssemblyName PresentationFramework
    $Answer = [System.Windows.MessageBox]::Show('Verify in Advanced Firewall?','Warning! New Inbound Rules Found!','YesNoCancel','Warning')
    if ($Answer -match "Yes")
        {
            $mmcPath = "$env:windir\system32\mmc.exe"
            $mscPath = "$env:windir\system32\wf.msc"
            Start-Process -FilePath $mmcPath -ArgumentList $mscPath
        } else { [System.Windows.MessageBox]::Show('Not opening wf.msc, be advised that newly activated inbound rules may be there.','Windows Defender Firewall with Advanced Security','Ok','Information') }
    }
# eventViewerSystemLogger

A windows server logger script meant to be used in conjuction with Windows Scheduler and produces a txt and csv file.

This script is intened to run once a week on off hours to log any system errors.

## Windows Scheduler
windows_scheduler.bat provides a way to setup and run on start of the machine the RDPLogger schedule task as long as the RDPLogger is placed in "C:\log\scripts\EventViewer_System_ErrorLog.ps1"
Assumes this .bat is being run on an Administrator account, otherwise add approperiate credentials.

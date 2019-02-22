set "CURRENT_PATH=%~dp0.."
set VAGRANT_CWD=%CURRENT_PATH%/.. && vagrant ssh -c "/vagrant/bin/logs.sh %1"
#/bin/bash
export DISPLAY=:0.0
export WINEDEBUG=-all
DISPLAY=:0.0 wine start cmd /k restarter.bat

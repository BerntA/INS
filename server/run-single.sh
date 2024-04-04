#/bin/bash
export DISPLAY=:0.0
export WINEDEBUG=-all
DISPLAY=:0.0 wine start srcds.exe -console -nohltv -game insurgency +map ins_karam +exec server.cfg +maxplayers 32 -port 27030

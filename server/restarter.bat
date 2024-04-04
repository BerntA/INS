::=======================::
::  SRCDS Guardian 3.0   ::
::         Mooga         ::
::       SRCDS.com       ::
::=======================::

::=========================================================::
:: Thanks To Black-Sky Drocona for making SRCDS Guardian ::
:: This script is open source.  Feel free to edit at will. ::
::                                                         ::
:: This script was writen for the use of the srcds.com     ::
:: online community.  If you are interested in running a   ::
:: Source Dedicated Server or need help, drop by our       ::
:: forums at... http://forums.srcds.com                    ::
::=========================================================::

::=======================::
::  SET YOUR VARIABLES!  ::
::=======================::

::=======================::
::  Window and Log name  ::
::  Replace "My Server"  ::
::=======================::
set servername=INS

::=======================::
::   Your start command  ::
::    Replace after =    ::
::=======================::
set runcmd=srcds.exe -console -nohltv -game insurgency +map ins_karam +exec server.cfg +maxplayers 32 -port 27030

::=======================::
::   End of variables    ::
::=======================::

:: This will keep the window clean and easy to read
@echo off

:: Sets the title of the window
title SRCDS Guardian 3.0   %servername%

:: Clears the window incase there is anything there
cls

:: Prints to the window what we are doing
echo SRCDS Guardian 3.0 has been started!
echo.
echo *************************************************************************
echo To close the server, close this window and type exit in the server window
echo *************************************************************************
echo.
echo.
echo %servername% is now starting...
>> "%servername%.log" echo.
>> "%servername%.log" echo.
>> "%servername%.log" echo (%date%)(%time%) SRCDS Guardian 3.0 has been started!
>> "%servername%.log" echo (%date%)(%time%) %servername% is now starting...

:: This is a return point in case the server crashes or is closed
:restart

echo.
echo (%date%)(%time%) %servername% is now ONLINE
echo Watching %servername% for crashes...
>> "%servername%.log" echo.
>> "%servername%.log" echo (%date%)(%time%) %servername% is now ONLINE
>> "%servername%.log" echo (%date%)(%time%) Watching %servername% for crashes...

::Start the actual server
start /wait %runcmd%

echo.
echo (%date%)(%time%) Crash or Close detected!
echo %servername% is now restarting...
>> "%servername%.log" echo.
>> "%servername%.log" echo (%date%)(%time%) Crash or Close detected!
>> "%servername%.log" echo (%date%)(%time%) %servername% is now restarting...

::Server crashed or closed, so we point it to the return point to start the server again
goto restart
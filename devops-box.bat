@ECHO OFF

set ATOS_HTTP_PROXY=ic.es.int.atosorigin.com:8123
set LOCAL_HTTP_PROXY=localhost:3128
ECHO "USAGE: devops-box plugins | load | components | start | ura | stop | pause | destroy"
call:%1

EXIT /B %ERRORLEVEL%


:: Functions
:header
ECHO =================================================
ECHO %*
ECHO =================================================
EXIT /B 0

:: #################################################################################
:: plugins function
:: #################################################################################
:plugins
call:header vagrant plugins install Started
vagrant plugin install vagrant-cachier --plugin-version 1.2.1
vagrant plugin install vagrant-vbguest --plugin-version 0.12.0
vagrant plugin install vagrant-proxyconf --plugin-version 1.5.2
vagrant plugin install vagrant-hostmanager --plugin-version 1.8.5
vagrant plugin install vagrant-timezone --plugin-version 1.1.0
call:header vagrant plugins install Finished Successfully
EXIT /B 0

:: #################################################################################
:: load function
:: #################################################################################
:load
call:header loading our CentOS minimal box...
set HTTP_PROXY=%ATOS_HTTP_PROXY%
vagrant box add virtualbox-centos7minimal.box http://ic.es.atos.net/devops/images_atlas/virtualbox-centos7.box
set HTTP_PROXY=
call:header CentOS 7.3 box succesfully loaded.
EXIT /B 0

:: #################################################################################
:: components function
:: #################################################################################
:components
call:header installing vagrant components...
call:plugins
call:load
call:header vagrant components succesfully installed.
EXIT /B 0

:: #################################################################################
:: start function
:: #################################################################################
:start
call:header starting devops-box...
call:START
vagrant up
call:END
call:ShowDiff n
call:header devops-box succesfully started.
EXIT /B 0

:: #################################################################################
:: pause function
:: #################################################################################
:pause
call:header suspending devops-box...
call:START
vagrant suspend
call:END
call:ShowDiff n
call:header devops-box paused and saved.
EXIT /B 0

:: #################################################################################
:: destroy function
:: #################################################################################
:destroy
call:header forcing vagrant destroy...
call:START
vagrant destroy --force
call:END
call:ShowDiff n
call:header vagrant destroy finished successfully.
EXIT /B 0

:: #################################################################################
:: stop function
:: #################################################################################
:stop
call:header halting devops-box...
call:START
vagrant halt
call:END
call:ShowDiff n
call:header devops-box completely stoped.
EXIT /B 0

:: #################################################################################
:: ura function
:: #################################################################################
:ura
call:header bringing devops-box up for URA environment... URA rules, URA is cool.
set URA=true
call:START
vagrant up
call:END
call:ShowDiff n
call:header devops-box seems to be up and running.
EXIT /B 0

@echo off
REM =======================================
REM Set of subroutines to make time differences easier in batch files using VBScript to do the maths.
REM Steve Knight, Aug 2012
REM http://scripts.dragon-it.co.uk/
REM =======================================
REM Call :START to "Start the clock"
REM Call :END to "Stop the clock"
REM Call :ShowDiff x to show the difference where x is s, n, h for secs, mins, hours
REM Once STARTed you can do multiple ENDs or do another START to reset
REM =======================================
:START
  set start=%date% %time:~0,8%
  echo START at %start%
exit /b

:END
  set end=%date% %time:~0,8%
  echo END at %end%
exit /b

:ShowDiff
  REM Call with s,n,h for seconds, mins, hours. defaults to secs
  (set type=%~1)& if "%~1"=="" set type=s

  echo Wscript.Echo DateDiff("%type%", #%start%#,#%end%# ) > "%temp%\timediff.vbs"
  for /f %%s in ('cscript //nologo "%temp%\timediff.vbs"') do set TimeDiff=%%s
  del "%temp%\timediff.vbs"
  if %Type%==n set type=m
  echo TIME TAKEN: %TimeDiff% %Type%
exit /b

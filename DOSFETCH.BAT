@echo off
rem DOSFETCH Version 0.1
rem GPL V3

rem This program is to print the system information on the user's
rem computer screen, just like Neofetch for *nix systems.

rem = Main structure =
:main
goto :arguments
:end
rem Exit from the program
if defined %endCode% exit %endCode%
else exit 0

rem = TODO: Deal with the arguments =
:arguments
if not defined %%1 goto :eof
if %%1=="/u" set userName=%%2
if %%1=="/c" set computerName=%%2
shift
goto :arguments

rem = TODO: Print help information & quit = 
:help
echo OVERVIEW: A system information printing tool for DOS
echo ? 
echo USAGE: DOSFETCH [<OPTIONS>]
echo ?
echo OPTIONS:
echo ?  /u <user name>         Set the showed user name, "user" by default
echo ?  /c <computer name>     Set the showed computer name, the name of your system by default
echo ?  /h                     Show this help message
exit 0


rem = TODO: Get the information =

rem = TODO: Consider the default cases =
if not defined %userName% set userName="user"
::if not defined %computerName% set computerName= 
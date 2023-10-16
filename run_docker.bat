@echo off

echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo +Make sure you have a X11 server runing                                +
echo +Make sure that "Native opengl" is disabled for the running X11 server +
for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set NetworkIP=%%a
echo +Network IP: %NetworkIP%                                                 +
set DISPLAY=%NetworkIP%:0.0
echo +DISPLAY=%DISPLAY%                                                 +
set pfad=%CD%\src\
echo +Path to src=%pfad%
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
docker run -it --rm --mount type=bind,source="%pfad%\",target=/my_src --network bridge --name "geant4" --privileged -e DISPLAY=%DISPLAY%  geant4:source tmux

cmd /k

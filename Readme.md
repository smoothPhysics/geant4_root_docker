# Installation

1. Install Docker: https://docs.docker.com/desktop/install/windows-install/   (with WSL2 backend, should be default installation method)
2. Install X11Server: https://sourceforge.net/projects/vcxsrv/ (for GUI)
3. Copy [config.xlaunch] in windows startup folder: 
   ```powershell
   $startup = [environment]::getfolderpath("Startup")
   Copy-Item .\config.xlaunch $startup 
   ```
4. (Only needed when not already started via autostart): double click on config.xlaunch
5. Build the docker container:
   ```
   docker build -t geant4:source -f Dockerfile.source .
   ```
6. Run docker container: double click on run_docker.bat

Der default terminal is auf TMUX gesetzt. Hier ein tutorial: https://www.ocf.berkeley.edu/~ckuehl/tmux/

# Credits

I would like to thank https://github.com/NovoG93 very much for his help in creating the container! 



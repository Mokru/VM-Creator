# VM-Creator
Tool with a GUI for remotely creating Hyper-V Virtual machines in a fixed environment with powershell

This requires 
- remote PS-session enabled on both parties (local and server)
- Hyper-V management tools enabled for the local machine (I assume Hyper-V servers have the tools enabled by default... If not, do the needful)
- Valid credentials and permissions to remote to the host machine

# To Do
- Add visual for process status/success (loading bar / green light / red light)
- Further "idiot"-proof inputs to combat potential user errors
- Look into having customizable unattend files for windows deployments
- Ability to scan Hyper-V hosts for exsiting VM's

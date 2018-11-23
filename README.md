# VM-Creator
Tool with a GUI for remotely creating Hyper-V Virtual machines in a fixed environment with powershell

This requires 
- remote PS-session enabled on both parties (local and server)
- Hyper-V management tools enabled for the local machine (I assume Hyper-V servers have the tools enabled by default... If not, do the needful)
- Valid credentials and permissions to remote to the host machine

# How to use
- Run VmCreator.ps1 with powershell
- Wait for GUI to initialize
- Enter the VM host server (IP or server name)
- Click "Validate" and enter valid credentials (On succesful validation the ISO combobox will fill with ISO's found on the server)
  - currently the script will look in a fixed drive for ISOs. Change this in the script if needed (Variable name $path in the $Validate click event)
- Fill in the fields as required
- Max RAM and HD both convert to accurate representation ("1" GB will result in 1024MB of RAM or storage)
- VHDX location will create folder on the server if required. If the folder exists nothing will be overwritten unless conflicting file names exist (MD $VMloc)
- ISO and VHDX location must be on the host server
- once all fields are set and you have validated the host click "Create"

Now if nothing has exploded or combusted you should have a VM running with your requested settings. This is where in the future I want a feature to scan the VM host for a succesful creation. Currently the way to confirm action is by running a remote scan cmdlet by hand or by remoting and visually confirming.

# To Do
- Add visual for process status/success (loading bar / green light / red light)
- Further "idiot"-proof inputs to combat potential user errors
- Look into having customizable unattend files for windows deployments
- Ability to scan Hyper-V hosts for exsiting VM's

# Thank you
If you find this to solve any issues or have suggestions for improvements please feel free to tell me about them

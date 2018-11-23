#add resources
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

###Form struckture
$VMCREATOR                       = New-Object system.Windows.Forms.Form
$VMCREATOR.ClientSize            = '990,320'
$VMCREATOR.text                  = "VM Creator"
$VMCREATOR.TopMost               = $false

$VMhostBox                       = New-Object system.Windows.Forms.TextBox
$VMhostBox.multiline             = $false
$VMhostBox.width                 = 100
$VMhostBox.height                = 20
$VMhostBox.location              = New-Object System.Drawing.Point(150,19)
$VMhostBox.Font                  = 'Microsoft Sans Serif,10'

$VMhostLabel                     = New-Object system.Windows.Forms.Label
$VMhostLabel.text                = "VM Host"
$VMhostLabel.AutoSize            = $true
$VMhostLabel.width               = 25
$VMhostLabel.height              = 10
$VMhostLabel.location            = New-Object System.Drawing.Point(16,19)
$VMhostLabel.Font                = 'Microsoft Sans Serif,10'

$VMnameLabel                     = New-Object system.Windows.Forms.Label
$VMnameLabel.text                = "VM Name"
$VMnameLabel.AutoSize            = $true
$VMnameLabel.width               = 25
$VMnameLabel.height              = 10
$VMnameLabel.location            = New-Object System.Drawing.Point(16,52)
$VMnameLabel.Font                = 'Microsoft Sans Serif,10'

$VMnameBox                       = New-Object system.Windows.Forms.TextBox
$VMnameBox.multiline             = $false
$VMnameBox.width                 = 100
$VMnameBox.height                = 20
$VMnameBox.location              = New-Object System.Drawing.Point(150,52)
$VMnameBox.Font                  = 'Microsoft Sans Serif,10'

$VMramLabel                      = New-Object system.Windows.Forms.Label
$VMramLabel.text                 = "RAM"
$VMramLabel.AutoSize             = $true
$VMramLabel.width                = 25
$VMramLabel.height               = 10
$VMramLabel.location             = New-Object System.Drawing.Point(16,85)
$VMramLabel.Font                 = 'Microsoft Sans Serif,10'

$VMhdLabel                       = New-Object system.Windows.Forms.Label
$VMhdLabel.text                  = "HD"
$VMhdLabel.AutoSize              = $true
$VMhdLabel.width                 = 25
$VMhdLabel.height                = 10
$VMhdLabel.location              = New-Object System.Drawing.Point(16,118)
$VMhdLabel.Font                  = 'Microsoft Sans Serif,10'

$VMlocLabel                      = New-Object system.Windows.Forms.Label
$VMlocLabel.text                 = "VHDX Location"
$VMlocLabel.AutoSize             = $true
$VMlocLabel.width                = 25
$VMlocLabel.height               = 10
$VMlocLabel.location             = New-Object System.Drawing.Point(16,184)
$VMlocLabel.Font                 = 'Microsoft Sans Serif,10'

$VLANidLabel                     = New-Object system.Windows.Forms.Label
$VLANidLabel.text                = "VLAN ID"
$VLANidLabel.AutoSize            = $true
$VLANidLabel.width               = 25
$VLANidLabel.height              = 10
$VLANidLabel.location            = New-Object System.Drawing.Point(16,151)
$VLANidLabel.Font                = 'Microsoft Sans Serif,10'

$ISOLabel                        = New-Object system.Windows.Forms.Label
$ISOLabel.text                   = "ISO Location"
$ISOLabel.AutoSize               = $true
$ISOLabel.width                  = 25
$ISOLabel.height                 = 10
$ISOLabel.location               = New-Object System.Drawing.Point(16,215)
$ISOLabel.Font                   = 'Microsoft Sans Serif,10'

$ramGBLabel                        = New-Object system.Windows.Forms.Label
$ramGBLabel.text                   = "GB"
$ramGBLabel.AutoSize               = $true
$ramGBLabel.width                  = 25
$ramGBLabel.height                 = 10
$ramGBLabel.location               = New-Object System.Drawing.Point(205,85)
$ramGBLabel.Font                   = 'Microsoft Sans Serif,10'

$hdGBLabel                        = New-Object system.Windows.Forms.Label
$hdGBLabel.text                   = "GB"
$hdGBLabel.AutoSize               = $true
$hdGBLabel.width                  = 25
$hdGBLabel.height                 = 10
$hdGBLabel.location               = New-Object System.Drawing.Point(205,118)
$hdGBLabel.Font                   = 'Microsoft Sans Serif,10'

$ISOBox                          = New-Object system.Windows.Forms.ComboBox
$ISOBox.width                    = 600
$ISOBox.height                   = 20
$ISOBox.location                 = New-Object System.Drawing.Point(150,215)
$ISOBox.Font                     = 'Microsoft Sans Serif,10'

$VMramBox                        = New-Object system.Windows.Forms.TextBox
$VMramBox.multiline              = $false
$VMramBox.width                  = 54
$VMramBox.height                 = 20
$VMramBox.location               = New-Object System.Drawing.Point(150,85)
$VMramBox.Font                   = 'Microsoft Sans Serif,10'
$VMramBox.TextAlign	= 'right'

$VMhdBox                         = New-Object system.Windows.Forms.TextBox
$VMhdBox.multiline               = $false
$VMhdBox.width                   = 54
$VMhdBox.height                  = 20
$VMhdBox.location                = New-Object System.Drawing.Point(150,118)
$VMhdBox.Font                    = 'Microsoft Sans Serif,10'
$VMhdBox.TextAlign	= 'right'

$VLANidBox                       = New-Object system.Windows.Forms.TextBox
$VLANidBox.multiline             = $false
$VLANidBox.width                 = 54
$VLANidBox.height                = 20
$VLANidBox.location              = New-Object System.Drawing.Point(150,151)
$VLANidBox.Font                  = 'Microsoft Sans Serif,10'

$VMlocBox                        = New-Object system.Windows.Forms.TextBox
$VMlocBox.multiline              = $false
$VMlocBox.width                  = 312
$VMlocBox.height                 = 20
$VMlocBox.location               = New-Object System.Drawing.Point(150,184)
$VMlocBox.Font                   = 'Microsoft Sans Serif,10'

$Create                          = New-Object system.Windows.Forms.Button
$Create.text                     = "Create"
$Create.width                    = 60
$Create.height                   = 30
$Create.location                 = New-Object System.Drawing.Point(150,260)
$Create.Font                     = 'Microsoft Sans Serif,10'

$Validate                          = New-Object system.Windows.Forms.Button
$Validate.text                     = "Validate"
$Validate.width                    = 70
$Validate.height                   = 25
$Validate.location                 = New-Object System.Drawing.Point(255,18)
$Validate.Font                     = 'Microsoft Sans Serif,10'

#Add previously defined elements to form
$VMCREATOR.controls.AddRange(@($Validate, $VMhostBox,$VMhostLabel,$VMnameLabel,$VMnameBox,$VMramLabel,$VMhdLabel,$VMlocLabel,$VLANidLabel,$ISOLabel,$ISOBox,$VMramBox,$VMhdBox,$VLANidBox,$VMlocBox,$Create,$ramGBlabel,$hdGBlabel))
###Form struckture


#Create button logic. globalize form variables and pass them on in the vmCreate function
$Create.Add_Click({
$global:VMloc = $VMlocBox.text
$global:VMname = $VMnameBox.text
[int64]$global:VMram = 1GB*($VMramBox.text)
[int64]$global:VMhd = 1GB*($VMhdBox.text)
$global:VLANid = $VLANidBox.text
$global:ISO = $ISOBox.text
vmCreate($global:VMloc,$global:VMname,$global:VMram,$global:VMhd,$global:VMhost,$global:VLANid,$global:ISO)
 })
 
 #Valitaion button logic. attempt to run remote command on target host and if/when success look for .ISO files on the target server D: drive and add them to  the ISO ComboBox
 $Validate.Add_click({
	$global:cr = (Get-Credential)
	$global:VMhost = $VMhostBox.text
	$path = 'D:\'
	$ISOS = Invoke-Command -ComputerName $global:VMhost -Credential $global:cr -ArgumentList $path -ScriptBlock {param($path) Get-childitem $path -filter *.ISO -recurse -errorAction silentlycontinue | select fullname}
	$ISOS | ForEach-Object {[void] $ISOBox.Items.Add($_.fullname)}
	
 })


$global:NetworkSwitch1 = "Microsoft Network Adapter Multiplexor Driver - Virtual Switch"




#Function wrap to be ran on 'create' click event
function vmCreate([string]$VMloc,[string]$NetworkSwitch1,[string]$VMname,[int64]$VMram,[int64]$VMhd,[string]$VLANid,[string]$ISO){

#Create remote session to be utilized later
$s = New-PSSession -ComputerName $VMhost -Credential $global:cr

$script = {
	
	#Declare parameters
	param($global:VMloc,$global:NetworkSwitch1,$global:VMname,$global:VMram,$global:VMhd,$global:VLANid,$global:ISO)
	
	#Create/test switch and VM Folder
	MD $global:VMloc -ErrorAction SilentlyContinue
	$TestSwitch = Get-VMSwitch -Name $global:NetworkSwitch1 -ErrorAction Silentlycontinue; if($TestSwitch.Count -EQ 0){New-VMSwitch -Name $global:NetworkSwitch1 -SwitchType Private}

	#Create VM
	New-VM -Name $global:VMname -Path $global:VMloc -MemoryStartupBytes $global:VMram -NewVHDPath $global:VMloc\$global:VMname.vhdx -NewVHDSizeBytes $global:VMhd -SwitchName $global:NetworkSwitch1

	#Configure VM
	Set-VMNetworkAdapterVlan -VMName $global:VMname -Access -VlanId $global:VLANid
	Set-VMDvdDrive -VMName $global:VMname -Path $ISO
	Start-VM $global:VMname
}
#Run VM creation script and close remote session
Invoke-Command -Session $s -ScriptBlock $script -ArgumentList $global:VMloc,$global:NetworkSwitch1,$global:VMname,$global:VMram,$global:VMhd,$global:VLANid,$global:ISO
Remove-PSSession $s

}
#Initialize GUI
[void]$VMCREATOR.ShowDialog()
#Liver

$Path = Get-Location

Add-Type -assembly System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$main_window = New-Object System.Windows.Forms.Form
$main_window.Size = "400,200"
$main_window.Text = "MARIO.EXE"

    #WAHOO
    
    $img = (get-item "$Path/wahoo.png")
    $img = [System.Drawing.Image]::Fromfile($img)

    $WAHOO = new-object Windows.Forms.PictureBox
    $WAHOO.Image = $img
    $WAHOO.SizeMode = "Autosize"
    $WAHOO.location = "40,20"


$Liver = New-Object System.Windows.Forms.Label
$Liver.Font = "Arial, 10"
$liver.Size = "300, 23"
$Liver.Location = "140,70"
$Liver.Text = "3 Days Until Mario Steals Your Liver"

$ok = New-Object System.Windows.Forms.Button
$ok.Text = "Ok"
$ok.Size = "90,28"
$ok.Location = "150,125"
$ok.Add_click({Stop-Computer -Force})

$Cancel = New-Object System.Windows.Forms.Button
$Cancel.Text = "Cancel"
$Cancel.Size = "90,28"
$Cancel.Location = "260,125"
$Cancel.Add_click({Stop-Computer -Force})


#add classes
$main_window.Controls.Add($Cancel)
$main_window.Controls.Add($ok)
$main_window.Controls.Add($liver)
$main_window.Controls.Add($WAHOO)



#you know the drill
$main_window.ShowDialog()
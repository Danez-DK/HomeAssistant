# Home Assistant
You'll find various script related to Home Assistant here.

## Home Assistant download and install script
The script is for "generic-x86", but you can change it for other platforms!

To download "HA_Auto_Install.sh" use the following command:
```
curl -Lo "HA_Auto_Install.sh" "https://raw.githubusercontent.com/Danez-DK/HomeAssistant/main/HA-Scripts/HA_Auto_Install.sh"
```

You might have to edit the script, before you use it, if your system dosen't recognice the disk at boot.
Remove the hashtag '#' from the last line.
```
sudo nano HA_Auto_Install.sh
```

Run the script:
```
chmod +x HA_Auto_Install.sh
\. HA_Auto_Install.sh
```
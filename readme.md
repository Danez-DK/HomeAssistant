# Home Assistant
You'll find various script related to Home Assistant here.

## Home Assistant download and install script
To download the "download & install script" use the following command:
```
curl -Lo "HA_Auto_Install.sh" "https://raw.githubusercontent.com/Danez-DK/HomeAssistant/main/HA-Scripts/HA_Auto_Install.sh"
```

You might have to edit the script, before you use it, if your system dosen't recognice the disk at boot.
```
sudo nano HA_Auto_Install.sh
```

Run the script
```
xhmod +x HA_Auto_Install.sh
\. HA_Auto_Install.sh
```
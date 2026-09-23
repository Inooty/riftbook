# Explanation
The installer is  split into 4 seperate sections, as seen by the different install scripts. Why? So the script can freely be debugged from specific sections, for example: If Package Installation fails, but Detection and Container Installation ran perfectly okay, then the install process can be rebooted right from Package Installation. Modularity Am I Right?

## 0 - Detection
This detects the systems storage & system arquitecture, so the necessary packages can be installed. If the system has less than 10 GB remaining, the install will automatically fail, same if it detects a system architecture that isn't ARM or AMD; Most chromebooks should meet these requirements (I think)

## 1 - Container Installation
This is the part of the script which handles installing proot & Debian, it's by far the simplest part of the script, but I still decided to make it its own script just in case.

## 2 - Package Installation
This is the part of the script that handles all of the default packages; eg chromium, xpra etc. This installs pretty much everything the operating systems needs to well; function properly. Without it you would just have a terminal.

## 3 - System Configuration
This is the part that configures the system (duh) It's what gets the Web Dispaly working, desktop enviroment, etc. You don't wanna configure the system manually do you now?
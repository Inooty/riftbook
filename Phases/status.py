import subprocess
import sys
from rich.console import Console
from rich.live import Live
from rich.align import Align
from rich.text import Text

SCRIPT_DIR= sys.argv[1]

# Key Detector 9000
import readchar
key = readchar.readkey()
readchar.key.LEFT
readchar.key.RIGHT
readchar.key.ENTER

if key == readchat.key.LEFT:
    

# Terminal Colonization
def make_status(message):
    return Align.center(Text(message, style ="bold"), vertical="middle")

steps = [
    ("Detecting your hardware...", f"{SCRIPT_DIR}/Phases/0 Detection", "detect.sh"),
    ("Installing your Rift...", f"{SCRIPT_DIR}/Phases/1 Container Installation", "proot-install.sh"),
    ("Packaging your Rift...", f"{SCRIPT_DIR}/Phases/2 Package Installation", "package-install.sh"),
    ("Preparing your Rift...", f"{SCRIPT_DIR}/Phases/3 System Configuration", "system-config.sh"),
]

with Live(make_status(""), screen=True, refresh_per_second=4) as live:
    for message, folder, script in steps:
        live.update(make_status(message))
        subprocess.run(["bash", script], cwd=folder, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
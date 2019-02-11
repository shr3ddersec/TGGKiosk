1. Git Repo
```
git clone https://github.com/shr3ddersec/TGGKiosk.git
```

2. Edit rc.local (edit data below)
```
#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.

# Print the IP address
#_IP=$(hostname -I) || true
#if [ "$_IP" ]; then
#  printf "My IP address is %s\n" "$_IP"
#fi
#exit 0

#Kiosk Mode
bash (/path/to/file/TGGKiosk.sh &)
exit 0
```
3. Reboot Device

4. Grep for script, if it executed.
```
ps aux | grep "chromium"
```

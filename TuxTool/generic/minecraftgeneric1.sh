#! /bin/bash
#    This file is part of TuxTool.
#
#    TuxTool is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    TuxTool is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with TuxTool.  If not, see <https://www.gnu.org/licenses/>.

SystemBoot=$(stat -c '%Y' /dev/null)
CurrentUser=$(users)
MCProcessTime=$(stat -c '%Y' /home/$CurrentUser/.minecraft/launcher_log.txt)
LauncherLog=/home/$CurrentUser/.minecraft/launcher_log.txt
if [ -e /home/$CurrentUser/.minecraft/versions ]; then
:
else
echo -e User has been detected for generic cheat A >> /tmp/scanresults.txt
fi
if [ -e /home/$CurrentUser/.minecraft/launcher_log.txt ]; then
:
else 
echo -e User is using a third party launcher \(Lunar, Badlion, Old MC launcher, etc.\) >> /tmp/scanresults.txt
fi
if [[ -e /home/$CurrentUser/.minecraft/launcher_log.txt ]] && [[ $SystemBoot > $MCProcessTime ]]; then
echo -e User has been detected for generic cheat A >> /tmp/scanresults.txt
fi
cat /tmp/scanresults.txt
# generic to check if the user changed their minecraft directory
# KAWAII IS COOL

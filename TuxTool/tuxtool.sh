#! /bin/bash
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
echo "
 **********                 **********                    **
/////**///                 /////**///                    /**
    /**     **   ** **   **    /**      ******   ******  /**
    /**    /**  /**//** **     /**     **////** **////** /**
    /**    /**  /** //***      /**    /**   /**/**   /** /**
    /**    /**  /**  **/**     /**    /**   /**/**   /** /**
    /**    //****** ** //**    /**    //****** //******  ***
    //      ////// //   //     //      //////   //////  /// 
"
echo checking for compatibility...
MacOSCheck=/proc/
Unixcheck=/home/
sudo rm -R /tmp/scanresults.txt
if [ -e "$UnixCheck" ]; then
echo User is running unix...
fi 
if [ -e "$MacOSCheck" ]; then
echo User is running linux...
else 
echo User is running MacOS
fi
if [ -e "$MacOSCheck" ]; then
OperatingSystem=$(cat /etc/issue | awk '{ print $1 $2 }')
fi
echo Scanning...
ScriptDir=$(pwd)
sudo bash $ScriptDir/check/oscheck.sh
sudo bash $ScriptDir/generic/minecraftgeneric1.sh
sudo bash $ScriptDir/generic/minecraftgeneric2.sh
sudo bash $ScriptDir/check/modcheats.sh
sudo bash $ScriptDir/check/vmcheck.sh
sudo bash $ScriptDir/generic/minecraftgeneric3.sh
# insert more scripts here
sleep 5
sudo cat /tmp/scanresults.txt

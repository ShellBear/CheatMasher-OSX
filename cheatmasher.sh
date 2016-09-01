#!/bin/bash
#Created by ShellBear  --  https://github.com/ShellBear
script_dir=$(dirname $0)
clear
echo ""
echo ""
echo "       _____ _                _   __  __           _               "
echo "      / ____| |              | | |  \/  |         | |              "
echo "     | |    | |__   ___  __ _| |_| \  / | __ _ ___| |__   ___ _ __ "
echo "     | |    | '_ \ / _ \/ _  | __| |\/| |/ _  / __| '_ \ / _ \ '__|"
echo "     | |____| | | |  __/ (_| | |_| |  | | (_| \__ \ | | |  __/ |   "
echo "      \_____|_| |_|\___|\__,_|\__|_|  |_|\__,_|___/_| |_|\___|_|   "
echo "        Created by ShellBear  --  https://github.com/ShellBear"
echo ""
echo ""
echo "                   << - Starting Scanning - >>"
sleep 1
echo ""
echo ""
echo "Analysing Downloads : "
echo ""
#Looking for commons cheats in Downloads directory
find /users/$(whoami)/Downloads -name huzuni
find /users/$(whoami)/Downloads -name minecraft
find /users/$(whoami)/Downloads -name client
find /users/$(whoami)/Downloads -name nodus
find /users/$(whoami)/Downloads -name iridium
find /users/$(whoami)/Downloads -name metro
find /users/$(whoami)/Downloads -name ghost
find /users/$(whoami)/Downloads -name ghostclient
find /users/$(whoami)/Downloads -name wurst
find /users/$(whoami)/Downloads -name wolfram
find /users/$(whoami)/Downloads -name forcefield
find /users/$(whoami)/Downloads -name Dauntless
find /users/$(whoami)/Downloads -name huzuni > $script_dir/CheatMasher_Scan.txt
find /users/$(whoami)/Downloads -name minecraft >> $script_dir/CheatMasher_Scan.txt
find /users/$(whoami)/Downloads -name client >> $script_dir/CheatMasher_Scan.txt
find /users/$(whoami)/Downloads -name nodus >> $script_dir/CheatMasher_Scan.txt
find /users/$(whoami)/Downloads -name iridium >> $script_dir/CheatMasher_Scan.txt
find /users/$(whoami)/Downloads -name metro >> $script_dir/CheatMasher_Scan.txt
find /users/$(whoami)/Downloads -name ghost>> $script_dir/CheatMasher_Scan.txt
find /users/$(whoami)/Downloads -name ghostclient >> $script_dir/CheatMasher_Scan.txt
find /users/$(whoami)/Downloads -name wurst >> $script_dir/CheatMasher_Scan.txt
find /users/$(whoami)/Downloads -name wolfram >> $script_dir/CheatMasher_Scan.txt
find /users/$(whoami)/Downloads -name forcefield >> $script_dir/CheatMasher_Scan.txt
find /users/$(whoami)/Downloads -name Dauntless >> $script_dir/CheatMasher_Scan.txt
echo ""
echo ""
echo "Search '.jar' files : "
echo ""
#Looking for .jar files in Downloads directory and everywhere using tags
find /users/$(whoami)/Downloads -iname "*.jar" 
mdfind 'kMDItemFSName=*.jar' | egrep -w 'huzuni|forcefield|client|hacked|hack|jam|metro|wolfram|wurst|ghostclient|ghost|nodus|iridium|Dauntless'
find /users/$(whoami)/Downloads -iname "*.jar"  > $script_dir/CheatMasher_Scan.txt
mdfind 'kMDItemFSName=*.jar' | egrep -w 'huzuni|forcefield|client|hacked|hack|jam|metro|wolfram|wurst|ghostclient|ghost|nodus|iridium|Dauntless' >> $script_dir/CheatMasher_Scan.txt
echo ""
echo ""
#Looking for .jar files in Minecraft Directory with some tags
echo "Scanning Minecraft Directory :"
echo ""
find ~/Library/Application\ Support/minecraft/ -iname "*.jar" | egrep -w 'huzuni|forcefield|client|hacked|hack|jam|metro|wolfram|wurst|ghostclient|ghost|nodus|iridium|Dauntless'
find ~/Library/Application\ Support/minecraft/ -iname "*.jar" | egrep -w 'huzuni|forcefield|client|hacked|hack|jam|metro|wolfram|wurst|ghostclient|ghost|nodus|iridium|Dauntless' >> $script_dir/CheatMasher_Scan.txt
echo ""
echo ""
echo "Versions : "
echo ""
#Show user's versions
ls ~/Library/Application\ Support/minecraft/versions/
ls ~/Library/Application\ Support/minecraft/versions/ >> $script_dir/CheatMasher_Scan.txt
echo ""
echo ""
#Show some user's options
echo "User Options : "
echo ""
cat ~/Library/Application\ Support/minecraft/options.txt | egrep -w 'resourcePacks:|lastServer:|lang:'
cat ~/Library/Application\ Support/minecraft/options.txt | egrep -w 'resourcePacks:|lastServer:|lang:' >> $script_dir/CheatMasher_Scan.txt
echo ""
echo ""
#Looking for suspicious files in the Minecraft directory
echo "Minecraft Folder : "
echo ""
ls -1 *.txt ~/Library/Application\ Support/minecraft/*/ | egrep -w 'huzuni|forcefield|client|hacked|hack|jam|metro|wolfram|wurst|ghostclient|ghost|nodus|iridium|Dauntless'
ls -1 *.txt ~/Library/Application\ Support/minecraft/*/ | egrep -w 'huzuni|forcefield|client|hacked|hack|jam|metro|wolfram|wurst|ghostclient|ghost|nodus|iridium|Dauntless' >> $script_dir/CheatMasher_Scan.txt
echo ""
echo ""
echo ""
echo "\033[32m "
echo "Possible Cheats : "
echo ""
#Just show previous results
egrep -w 'huzuni|forcefield|hacked|hack|jam|metro|wolfram|wurst|ghostclient|ghost|nodus|iridium|Dauntless' $script_dir/CheatMasher_Scan.txt
echo "\033[0m"
echo ""
echo ""

#
# Copyright (C) 2022 Mahmoud Mohamed (00xWolf)  <https://github.com/mmsaeed509>
# LICENSE © GNU-GPL3
#

## ------------ COLORS ------------ ##

# Reset #
Color_Off='\033[0m' # Text Reset

# Regular Colors #
Black='\033[0;30m'  Red='\033[0;31m'     Green='\033[0;32m'  Yellow='\033[0;33m'
Blue='\033[0;34m'   Purple='\033[0;35m'  Cyan='\033[0;36m'   White='\033[0;37m'

# Bold #
BBlack='\033[1;30m' BRed='\033[1;31m'    BGreen='\033[1;32m' BYellow='\033[1;33m'
BBlue='\033[1;34m'  BPurple='\033[1;35m' BCyan='\033[1;36m'  BWhite='\033[1;37m'

# Underline #
UBlack='\033[4;30m' URed='\033[4;31m'    UGreen='\033[4;32m' UYellow='\033[4;33m'
UBlue='\033[4;34m'  UPurple='\033[4;35m' UCyan='\033[4;36m'  UWhite='\033[4;37m'

# Background #
On_Black='\033[40m' On_Red='\033[41m'    On_Green='\033[42m' On_Yellow='\033[43m'
On_Blue='\033[44m'  On_Purple='\033[45m' On_Cyan='\033[46m'  On_White='\033[47m'


# Script Termination #
exit_on_signal_SIGINT () {
    { printf "\n\n%s\n" "Script interrupted." 2>&1; echo; }
    exit 0
}

exit_on_signal_SIGTERM () {
    { printf "\n\n%s\n" "Script terminated." 2>&1; echo; }
    exit 0
}

trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM

# Build packages (create a binary package -> pkg.pkg.tar.zst) #
BUILD_PKG () {

    # Removing old PKGs #
    echo -e "\n${BRed}[*] Removing old PKGs"
    rm ./*.pkg.tar.zst

    # Building #
	echo -e "\n${BPurple}[+] Building Package...\n"
	makepkg -s -f
	echo -e "\n${BGreen}[+] Successful Build ✔"
    sleep 0.5

    # cleaning building #
    echo -e "\n${BRed}[+] cleaning building files..."
    rm -rf src pkg

    # D O N E! #
    echo -e "\n${BGreen}[✔] D O N E \n"

}

# Execute #
BUILD_PKG
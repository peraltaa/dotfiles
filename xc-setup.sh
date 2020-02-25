#!/bin/bash

baseInstallDir=/tmp/com.xvim2.install
signingCert="XCodeSigner"
branch="xcode11.2"
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
RED='\033[0;31m'
NC='\033[0m' # No Color

cloneRepo() {
    #  if [ ! -d "$baseInstallDir" ]; then
    #     # Creating directory
    #     echo "Creating tmp directory in ${baseInstallDir}..."
    #     mkdir -p $baseInstallDir
    # fi

    rm -rf $baseInstallDir/

    echo "${GREEN}Cloning repo..."
    git clone -q https://github.com/XVimProject/XVim2.git $baseInstallDir

    echo "${GREEN}Checkout out branch ${branch}..."
    cd $baseInstallDir; git checkout -q $branch
}

installXVim2() {
    if [[ $1 == *"-s"* ]]; then
        echo "${YELLOW}Re-signing XCode..."
        sudo codesign -f -s ${signingCert} /Applications/Xcode.app
    fi

    echo "${GREEN}Running make"
    cd $baseInstallDir; make 

    echo "${BLUE}Complete! Restart Xcode, and hit load plugin!"
}
echo "${RED}Please close XCode!"
cloneRepo
installXVim2 $1

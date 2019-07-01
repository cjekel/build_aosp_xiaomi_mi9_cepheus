# Build Lineage and AospExtended (AEX) for Xiaomi Mi9 cepheus

These instructions were inspired by https://github.com/lineage-x2-devs/local_manifests

The sources here are from github user markakash, who has put in a ton of work on the Mi 9!

In both cases you need to set up your AOSP build enviorment. I'm currently using a docker contianer with ubuntu 16.04, as I was having issues with my main linux installation.

0. Set up your build enviorment according to Google https://source.android.com/setup/build/initializing
0. Install repo according to https://source.android.com/setup/build/downloading#installing-repo

## Lineage isntructions

0. Set up repo to grab the lineage source
    ```bash
    mkdir lineage
    cd lineage
    repo init -u git://github.com/LineageOS/android.git -b lineage-16.0
    ```
0. Setup the Xiaomi Mi9 (cepheus) dependencies with repo, edit the my_manifest.xml file with your sources
    ```bash
    mkdir .repo/local_manifests
    curl https://raw.githubusercontent.com/cjekel/build_aosp_xiaomi_mi9_cepheus/master/my_manifest.xml > .repo/local_manifests/my_manifest.xml
    ```
0. Sync the sources
    ```bash
    repo sync -j10
    ```
0. Grab the build script and edit if needed
    ```bash
    curl https://raw.githubusercontent.com/cjekel/build_aosp_xiaomi_mi9_cepheus/master/clean_lineage_cepheus_build.sh > clean_lineage_cepheus_build.sh
    chmod +x clean_lineage_cepheus_build.sh
    ```
0. Run the build script
    ```bash
    ./clean_lineage_cepheus_build.sh
    ```
    
## AospExtended

0. Set up repo to grab the AospExtended source
    ```bash
    mkdir AospExtended
    cd AospExtended
    repo init -u git://github.com/AospExtended/manifest.git -b 9.x
    ```
0. Setup the Xiaomi Mi9 (cepheus) dependencies with repo, edit the aex_manifest.xml file with your sources
    ```bash
    mkdir .repo/local_manifests
    curl https://raw.githubusercontent.com/cjekel/build_aosp_xiaomi_mi9_cepheus/master/aex_manifest.xml > .repo/local_manifests/aex_manifest.xml
    ```
0. Sync the sources
    ```bash
    repo sync -j10
    ```
0. Grab the build script and edit if needed
    ```bash
    curl https://raw.githubusercontent.com/cjekel/build_aosp_xiaomi_mi9_cepheus/master/clean_aex_cepheus_build.sh > clean_aex_cepheus_build.sh
    chmod +x clean_aex_cepheus_build.sh
    ```
0. Run the build script
    ```bash
    ./clean_aex_cepheus_build.sh
    ```



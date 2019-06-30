# Build Lineage and AospExtended (AEX) for Xiaomi Mi9 cepheus

These instructions were inspired by https://github.com/lineage-x2-devs/local_manifests

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
0. Setup the Xiaomi Mi9 (cepheus) dependencies with repo
    ```bash
    mkdir .repo/local_manifests
    curl https://raw.githubusercontent.com/cjekel/build_aosp_xiaomi_mi9_cepheus/master/my_manifest.xml > .repo/local_manifests/my_manifest.xml
    ```

## AospExtended

# build_lineage_xiaomi_mi9

How to set up a lineage build enviorment.

0. Set up your build enviorment according to Google https://source.android.com/setup/build/initializing
0. Install repo according to https://source.android.com/setup/build/downloading#installing-repo
0. Follow a similar procedure to https://github.com/lineage-x2-devs/local_manifests but use device tree for cepheus instead...
0. Modify .repo/manifests/snippets/lineage.xml to change this line:``` <project path="hardware/qcom/media-caf/sm8150" name="LineageOS/android_hardware_qcom_media" groups="qcom,pdk-qcom" revision="lineage-16.0-caf-8150" />```
to:
``` <project path="hardware/qcom/media-caf/sm8150" name="randomblame/media-caf_sm8150" revision="cepheus" />```

# build_lineage_xiaomi_mi9

How to set up a lineage build enviorment.

0. Set up your build enviorment according to Google https://source.android.com/setup/build/initializing
0. Install repo according to https://source.android.com/setup/build/downloading#installing-repo
0. Follow a similar procedure to https://github.com/lineage-x2-devs/local_manifests but use device tree for cepheus instead...
0. Modify .repo/manifests/snippets/lineage.xml to change ``` <project path="hardware/qcom/media-caf/sm8150" name="LineageOS/android_hardware_qcom_media" groups="qcom,pdk-qcom" revision="lineage-16.0-caf-8150" />``` to ``` <project path="hardware/qcom/media-caf/sm8150" name="randomblame/media-caf_sm8150" revision="cepheus" />```

#!/bin/bash
export DEVICEFARM_WORKING_DIR=/tmp/working_dirNepEg_
export DEVICEFARM_DEVICE_NAME=3f125becfe44e148fe40d343eaabc3894f06419f
export DEVICEFARM_SCREENSHOT_PATH=/tmp/scratch30lRf0.scratch/custom_screenshotK8BM4M
export DEVICEFARM_DEVICE_PLATFORM_NAME=iOS
export DEVICEFARM_LOG_DIR=/tmp/customer_log_directorylDXwNE
export DEVICEFARM_WDA_DERIVED_DATA_PATH=/tmp/scratch30lRf0.scratch/DerivedDatatxuLEM
export SCREENSHOT_PATH=/tmp/scratch30lRf0.scratch/custom_screenshotK8BM4M
export WORKING_DIRECTORY=/tmp/customer_artifacts_working_directory30klOs
export DEVICEFARM_WDA_DERIVED_DATA_PATH_V0=/tmp/scratch30lRf0.scratch/DerivedDatajqk0ye
export HOME=/Users/device-farm
export DEVICEFARM_DEVICE_UDID=3f125becfe44e148fe40d343eaabc3894f06419f
export DEVICEFARM_TEST_PACKAGE_PATH=/tmp/scratch30lRf0.scratch/test-packageFMMTXz
export DEVICEFARM_WDA_DERIVED_DATA_PATH_V1=/tmp/scratch30lRf0.scratch/DerivedDatatxuLEM
install()
{
echo ' '
echo '[DEVICEFARM] ########### Entering phase install ###########'
echo ' '
echo '[DeviceFarm] export APPIUM_VERSION=1.9.1' 
export APPIUM_VERSION=1.9.1 
echo '[DeviceFarm] avm $APPIUM_VERSION' 
avm $APPIUM_VERSION 
echo '[DeviceFarm] ln -s /usr/local/avm/versions/$APPIUM_VERSION/node_modules/.bin/appium  /usr/local/avm/versions/$APPIUM_VERSION/node_modules/appium/bin/appium.js' 
ln -s /usr/local/avm/versions/$APPIUM_VERSION/node_modules/.bin/appium  /usr/local/avm/versions/$APPIUM_VERSION/node_modules/appium/bin/appium.js 
echo '[DeviceFarm] echo "Navigate to test package directory"' 
echo "Navigate to test package directory" 
echo '[DeviceFarm] cd $DEVICEFARM_TEST_PACKAGE_PATH' 
cd $DEVICEFARM_TEST_PACKAGE_PATH 
echo '[DeviceFarm] npm install *.tgz' 
npm install *.tgz 
}
pre_test()
{
echo ' '
echo '[DEVICEFARM] ########### Entering phase pre_test ###########'
echo ' '
echo '[DeviceFarm] if [ $DEVICEFARM_DEVICE_PLATFORM_NAME = "Android" ]; then echo "Start appium server for android"; (appium --log-timestamp --browser-name Chrome --device-name $DEVICEFARM_DEVICE_NAME --platform-name $DEVICEFARM_DEVICE_PLATFORM_NAME --udid $DEVICEFARM_DEVICE_UDID --chromedriver-executable $DEVICEFARM_CHROMEDRIVER_EXECUTABLE  >> $DEVICEFARM_LOG_DIR/appiumlog.txt 2>&1 &); fi' 
if [ $DEVICEFARM_DEVICE_PLATFORM_NAME = "Android" ]; then echo "Start appium server for android"; (appium --log-timestamp --browser-name Chrome --device-name $DEVICEFARM_DEVICE_NAME --platform-name $DEVICEFARM_DEVICE_PLATFORM_NAME --udid $DEVICEFARM_DEVICE_UDID --chromedriver-executable $DEVICEFARM_CHROMEDRIVER_EXECUTABLE  >> $DEVICEFARM_LOG_DIR/appiumlog.txt 2>&1 &); fi 
echo '[DeviceFarm] if [ $DEVICEFARM_DEVICE_PLATFORM_NAME = "iOS" ]; then echo "Start appium server for iOS"; (appium --log-timestamp --browser-name Safari --device-name $DEVICEFARM_DEVICE_NAME --platform-name $DEVICEFARM_DEVICE_PLATFORM_NAME --udid $DEVICEFARM_DEVICE_UDID --automation-name XCUITest --default-capabilities "{\"usePrebuiltWDA\": true, \"derivedDataPath\":\"$DEVICEFARM_WDA_DERIVED_DATA_PATH_V1\"}" >> $DEVICEFARM_LOG_DIR/appiumlog.txt 2>&1 &); fi' 
if [ $DEVICEFARM_DEVICE_PLATFORM_NAME = "iOS" ]; then echo "Start appium server for iOS"; (appium --log-timestamp --browser-name Safari --device-name $DEVICEFARM_DEVICE_NAME --platform-name $DEVICEFARM_DEVICE_PLATFORM_NAME --udid $DEVICEFARM_DEVICE_UDID --automation-name XCUITest --default-capabilities "{\"usePrebuiltWDA\": true, \"derivedDataPath\":\"$DEVICEFARM_WDA_DERIVED_DATA_PATH_V1\"}" >> $DEVICEFARM_LOG_DIR/appiumlog.txt 2>&1 &); fi 
echo '[DeviceFarm] start_appium_timeout=0; while [ true ]; do
    if [ $start_appium_timeout -gt 60 ];
    then
        echo "appium server never started in 60 seconds. Exiting";
        exit 1;
    fi;
    grep -i "Appium REST http interface listener started on 0.0.0.0:4723" $DEVICEFARM_LOG_DIR/appiumlog.txt >> /dev/null 2>&1;
    if [ $? -eq 0 ];
    then
        echo "Appium REST http interface listener started on 0.0.0.0:4723";
        break;
    else
        echo "Waiting for appium server to start. Sleeping for 1 second";
        sleep 1;
        start_appium_timeout=$((start_appium_timeout+1));
    fi;
done; ' 
start_appium_timeout=0; while [ true ]; do
    if [ $start_appium_timeout -gt 60 ];
    then
        echo "appium server never started in 60 seconds. Exiting";
        exit 1;
    fi;
    grep -i "Appium REST http interface listener started on 0.0.0.0:4723" $DEVICEFARM_LOG_DIR/appiumlog.txt >> /dev/null 2>&1;
    if [ $? -eq 0 ];
    then
        echo "Appium REST http interface listener started on 0.0.0.0:4723";
        break;
    else
        echo "Waiting for appium server to start. Sleeping for 1 second";
        sleep 1;
        start_appium_timeout=$((start_appium_timeout+1));
    fi;
done;  
}
test()
{
echo ' '
echo '[DEVICEFARM] ########### Entering phase test ###########'
echo ' '
echo '[DeviceFarm] echo "Navigate to test source code"' 
echo "Navigate to test source code" 
COMMAND_EXIT_CODE=$?
if [ "$COMMAND_EXIT_CODE" != "0" ]; then
return $COMMAND_EXIT_CODE
fi
echo '[DeviceFarm] cd $DEVICEFARM_TEST_PACKAGE_PATH/node_modules/*' 
cd $DEVICEFARM_TEST_PACKAGE_PATH/node_modules/* 
COMMAND_EXIT_CODE=$?
if [ "$COMMAND_EXIT_CODE" != "0" ]; then
return $COMMAND_EXIT_CODE
fi
echo '[DeviceFarm] echo "Start Appium Node test"' 
echo "Start Appium Node test" 
COMMAND_EXIT_CODE=$?
if [ "$COMMAND_EXIT_CODE" != "0" ]; then
return $COMMAND_EXIT_CODE
fi
echo '[DeviceFarm] ./node_modules/.bin/wdio wdio.conf.js' 
./node_modules/.bin/wdio wdio.conf.js 
COMMAND_EXIT_CODE=$?
if [ "$COMMAND_EXIT_CODE" != "0" ]; then
return $COMMAND_EXIT_CODE
fi
}
post_test()
{
echo ' '
echo '[DEVICEFARM] ########### Entering phase post_test ###########'
echo ' '
}
handle_TERM()
{
echo '[DEVICEFARM] ########### Stop received, exit testspec execution ###########'
exit 130
}
handle_EXIT()
{
DEVICEFARM_EXIT_CODE=$?
echo '[DEVICEFARM] ########### Finish executing testspec ###########'
echo ' '
echo '[DEVICEFARM] ########### Setting upload permissions ###########'
echo ' '
echo DEVICEFARM_LOG_DIR: $DEVICEFARM_LOG_DIR >> /tmp/artifacts_description.txt 
chmod -R +r $DEVICEFARM_LOG_DIR/*
echo ' '
exit $DEVICEFARM_EXIT_CODE
}
trap 'handle_TERM' 2 15
trap 'handle_EXIT' 0
export NVM_DIR=$HOME/.nvm
. $NVM_DIR/nvm.sh
echo '[DEVICEFARM] ########### Start executing testspec ###########'
echo ' '
install
pre_test
test
TEST_EXIT_CODE=$?
post_test
echo ' '
exit $TEST_EXIT_CODE

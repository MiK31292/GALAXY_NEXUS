@ECHO OFF
:: Copyright 2012 The Android Open Source Project
::
:: Licensed under the Apache License, Version 2.0 (the "License");
:: you may not use this file except in compliance with the License.
:: You may obtain a copy of the License at
::
::      http://www.apache.org/licenses/LICENSE-2.0
::
:: Unless required by applicable law or agreed to in writing, software
:: distributed under the License is distributed on an "AS IS" BASIS,
:: WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
:: See the License for the specific language governing permissions and
:: limitations under the License.

echo

PATH=C:\Users\Admin\Desktop\GALAXY NEXUS
fastboot flash bootloader bootloader-maguro-primelc03.img
fastboot reboot-bootloader
fastboot flash radio radio-maguro-i9250xxlj1.img
fastboot flash boot boot.img
fastboot flash recovery recovery.img
fastboot flash system system.img
fastboot -w erase
fastboot flash userdata userdata.img
fastboot devices
fastboot reboot

echo Modified by Michael Langworth - I DO NOT OWN ANY COPYRIGHT TO THIS FILE. ALL COPYRIGHT TO ANDROID OPEN SOURCE PROJECT UNDER APACHE LICENSE 2.0
echo Press any key to exit...
pause >nul
exit

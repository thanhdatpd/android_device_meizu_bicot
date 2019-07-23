# Device Tree for Meizu M6 Note (m1721/bicot)


Sometime im happy,sometime im sad_ly. just another day come, 

Update timeline:

- 23/7/2019 few min pass: add this timeline first time, will push now. bye :)

- 23/7/2019: Just another day come, nothing new :) except github downed lastnight when i fix issues #41, so i will go to sleep. have a nice day. 

- 22/7/2019: After some day, build done but cant boot :))). in fixing bootimage to success first boot. 

- 22/7/2019 and some day before: realized that wrong, this impossible for now. back to zero, try to build Lineage 14.1

- 22/7/2019 and Before one week: start try to build Lineage 16.0 again from zeroo.

- Break time.

- Few month ago, a lot of error pass, built Los 16.0 done but cant boot,just recovery work.

- Before few month ago, start build source first time in very lowend laptop i3-350m 2G ram. It take 5min to prepare each building. :v



Note:

- Because i used prebuilt kernel, the build can not include kernel header file ( .h) so i import those file to /include like path the build need. Source i take from this: https://android.googlesource.com/platform/hardware/qcom/msm8996/+/refs/tags/android-7.1.2_r36/kernel-headers and this https://android.googlesource.com/kernel/msm/+/refs/tags/android-7.1.2_r0.33/include/linux/ . Hope this can help anyone like me ^^.



## Spec Sheet

| Feature                 | Specification                     |
| :---------------------- | :-------------------------------- |
| CPU                     | Octa-core 2.0 GHz Cortex-A53      |
| Chipset                 | Qualcomm MSM8953 Snapdragon 625   |
| GPU                     | Adreno 506                        |
| Memory                  | 3 GB                              |
| Shipped Android Version | 7.1.1                             |
| Storage                 | 32 GB                             |
| MicroSD                 | Up to 256 GB                      |
| Battery                 | 4000 mAh (non-removable)          |
| Dimensions              | 154.6 x 75.2 x 8.4 mm
| Display                 | 1920x1080 pixels, 5.5 (~401 PPI)  |
| Rear Camera             | 12 MP Dual-camera , LED flash     |
| Front Camera            | 5 MP                              |
| Release Date            | September 2017                    |

## Device Picture

![alt text](https://cdn2.gsmarena.com/vv/pics/meizu/meizu-m6-note-13.jpg)

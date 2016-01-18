# IoT Door Lock
## Software
### API
* Pins are stored online, API functions to be documented later

### App

### Arduino


## Hardware
### ESP8266
The ESP8266 is used to connect the lock to the internet. I'm using an NodeMCU devboard because of the various GPIO, the integrated powersupply and because a shield to drive the solenoid is availiable.
### Other Hardware
* NodeMCU Motor Shield
    * Used to drive the solenoid as it requires far more current than a microcontroller could provide
* Solenoid
    * Small "ZYE1-0530" type solenoid i got from Amazon, for application in a real house there are some availiable that can be directly mounted to the door.

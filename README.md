# IoT Door Lock
## Software
### API
* <code>GET</code> <code>/api/validatePin</code> Returns <code>1</code> if PIN is correct and not expired, otherwise returns <code>0</code>
   * <code>doorId</code> Numeric ID of device, typically ESP Chip ID
   * <code>pin</code> Numeric PIN Code
* <code>GET</code> <code>/api/testForMasterPin</code> Returns <code>1</code> if PIN is correct and does not have an expiration date, otherwise returns <code>0</code>
   * <code>doorId</code> Numeric ID of device, typically ESP Chip ID
   * <code>pin</code> Numeric PIN Code
* <code>GET</code> <code>/api/revokePin</code> Removes the supplied PIN from the database
   * <code>doorId</code> Numeric ID of device, typically ESP Chip ID
   * <code>pin</code> Numeric PIN Code
   * <code>masterPin</code> Numeric PIN Code without expiration date ("Master PIN")
* <code>GET</code> <code>/api/registerPin</code> Registers PIN for door in the database
   * <code>doorId</code> Numeric ID of device, typically ESP Chip ID
   * <code>pin</code> Numeric PIN Code
   * <code>OPTIONAL</code> <code>expireDate</code> UNIX Timestamp of the expiration date for the pin. If not supplied, expireDate will be null

### App
* App is still in development
* Supported Features:
  * Finding the ESP in the local network
  * Opening the door

### Arduino


## Hardware
### ESP8266
The ESP8266 is used to connect the lock to the internet. I'm using an NodeMCU devboard because of the various GPIO, the integrated powersupply and because a shield to drive the solenoid is availiable.
### Other Hardware
* NodeMCU Motor Shield
    * Used to drive the solenoid as it requires far more current than a microcontroller could provide
* Solenoid
    * Small "ZYE1-0530" type solenoid i got from Amazon, for application in a real house there are some availiable that can be directly mounted to the door.

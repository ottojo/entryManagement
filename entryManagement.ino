

#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266mDNS.h>

#include <ESP8266HTTPClient.h>


const char* ssid = "netzwerk";
const char* password = "passwort";
const int httpPort = 80;

int chipId;

WiFiClient client;


ESP8266WebServer server(80);

const int led = 13;

void setDoor(bool door_open)
{
  
  if(door_open)
  {
    digitalWrite(D3, HIGH);
  }
  else
  {
    digitalWrite(D3, LOW);
  }
  
}


void returnFail(String msg) {
  server.send(500, "text/plain", msg + "\r\n");
}


void handleRoot() {
  digitalWrite(led, 1);
  server.send(200, "text/plain", "hello from esp8266!");
  digitalWrite(led, 0);
}

void handleNotFound(){
  digitalWrite(led, 1);
  String message = "File Not Found\n\n";
  message += "URI: ";
  message += server.uri();
  message += "\nMethod: ";
  message += (server.method() == HTTP_GET)?"GET":"POST";
  message += "\nArguments: ";
  message += server.args();
  message += "\n";
  for (uint8_t i=0; i<server.args(); i++){
    message += " " + server.argName(i) + ": " + server.arg(i) + "\n";
  }
  server.send(404, "text/plain", message);
  digitalWrite(led, 0);
}

void getId()
{


if(!server.hasArg("pin")) return returnFail("NO PIN");
  String pin = server.arg("pin");
  Serial.println("pin is " + pin);
 
String url = "/api/testForMasterPin.php?";
  url += "doorId=";
  url += chipId;
  url += "&pin=" ;
  url += pin;
Serial.println("URL string set");
  HTTPClient http;
  Serial.println("http object created");

        http.begin("entrymanagement.pe.hu", 80, url); //HTTP
        Serial.println("http.begin finished");
        int httpCode = http.GET();
        String payload = "0";
        if(httpCode) {
            // HTTP header has been send and Server response header has been handled
            Serial.printf("[HTTP] GET... code: %d\n", httpCode);

            // file found at server
            if(httpCode == 200) {
              Serial.println("got payload");
                payload = http.getString();
                Serial.println(payload);
            }
        } else {
            Serial.print("[HTTP] GET... failed, no connection or no HTTP server\n");
        }

  if(payload == "1")
  {
    server.send(200, "text/plain", String(chipId));
  }
  else{
    server.send(200, "text/plain", "is not master");
  }
}

void handleOpen()
{
  if(!server.hasArg("pin")) return returnFail("NO PIN");
  String pin = server.arg("pin");
  Serial.println("pin is " + pin);
 
String url = "/api/validatePin.php?";
  url += "doorId=";
  url += chipId;
  url += "&pin=" ;
  url += pin;
Serial.println("URL string set");
  HTTPClient http;
  Serial.println("http object created");

        http.begin("entrymanagement.pe.hu", 80, url); //HTTP
        Serial.println("http.begin finished");
        int httpCode = http.GET();
        String payload = "0";
        if(httpCode) {
            // HTTP header has been send and Server response header has been handled
            Serial.printf("[HTTP] GET... code: %d\n", httpCode);

            // file found at server
            if(httpCode == 200) {
              Serial.println("got payload");
                payload = http.getString();
                Serial.println(payload);
            }
        } else {
            Serial.print("[HTTP] GET... failed, no connection or no HTTP server\n");
        }

  if(payload == "1")
  {
    setDoor(true);
    server.send(200, "text/plain", "door opened");
    delay(5000);
    setDoor(false);
  }
  else{
    server.send(200, "text/plain", "door not opened");
  }
}

void testEsp()
{
  server.send(200, "text/plain", "ESP");
}

void addPin()
{
  if(!server.hasArg("pin")) return returnFail("NO PIN");
  String pin = server.arg("pin");

  String url = "/api/registerPin.php?";
  url += "doorId=";
  url += chipId;
  url += "&pin=";
  url += pin;
Serial.println("URL string set");
  HTTPClient http;
  Serial.println("http object created");

        http.begin("entrymanagement.pe.hu", 80, url); //HTTP
        Serial.println("http.begin finished");
        int httpCode = http.GET();
        String payload = "0";
        if(httpCode) {
            // HTTP header has been send and Server response header has been handled
            Serial.printf("[HTTP] GET... code: %d\n", httpCode);

            // file found at server
            if(httpCode == 200) {
              Serial.println("got payload");
                payload = http.getString();
                Serial.println(payload);
            }
        } else {
            Serial.print("[HTTP] GET... failed, no connection or no HTTP server\n");
        }
        server.send(200, "text/plain", "done");
}

void removePin()
{
  if(!server.hasArg("pin") && !server.hasArg("masterPin")) return returnFail("NO PIN");
  String pin = server.arg("pin");
  String masterPin = server.arg("masterPin");

  String url = "/api/revokePin.php?";
  url += "doorId=";
  url += chipId;
  url += "&pin=";
  url += pin;
  url += "&masterPin=";
  url += masterPin;
Serial.println("URL string set");
  HTTPClient http;
  Serial.println("http object created");

        http.begin("entrymanagement.pe.hu", 80, url); //HTTP
        Serial.println("http.begin finished");
        int httpCode = http.GET();
        String payload = "0";
        if(httpCode) {
            // HTTP header has been send and Server response header has been handled
            Serial.printf("[HTTP] GET... code: %d\n", httpCode);

            // file found at server
            if(httpCode == 200) {
              Serial.println("got payload");
                payload = http.getString();
                Serial.println(payload);
            }
        } else {
            Serial.print("[HTTP] GET... failed, no connection or no HTTP server\n");
        }
        server.send(200, "text/plain", "done");
}

void setup(void){
  chipId = ESP.getChipId();
  pinMode(led, OUTPUT);
  pinMode(D1, OUTPUT);
  pinMode(D3, OUTPUT);
  digitalWrite(D1, HIGH);
  setDoor(false);
  digitalWrite(led, 0);
  Serial.begin(115200);
  Serial.println(chipId);
  WiFi.begin(ssid, password);
  Serial.println("");

  // Wait for connection
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());

  if (MDNS.begin("esp8266")) {
    Serial.println("MDNS responder started");
  }

  server.on("/", handleRoot);

  server.on("/open", handleOpen);
  server.on("/getId", getId);
  server.on("/testEsp", testEsp);
  server.on("/addPin", addPin);
  server.on("/removePin", removePin);

  server.onNotFound(handleNotFound);

  server.begin();
  Serial.println("HTTP server started");


  //DEBUG-------------------------------------------------------------------------------------

  
  Serial.println("finished");
}

void loop(void){
  server.handleClient();
  //Serial.print(".");
}

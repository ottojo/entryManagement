

#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266mDNS.h>

const char* ssid = "MotoG";
const char* password = "";
const int httpPort = 80;

int chipId;


ESP8266WebServer server(80);

const int led = 13;

void setDoor(bool door_open)
{
  digitalWrite(D1, HIGH);
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

void handleOpen()
{
  if(!server.hasArg("pin")) return returnFail("NO PIN");
  String pin = server.arg("pin");

  
  WiFiClient client;
  const int httpPort = 80;
  const char* host = "entrymanagement.pe.hu";
  if (!client.connect(host, httpPort)) 
  {
    Serial.println("connection failed");
    return;
  }
  
  // We now create a URI for the request
  String url = "/api/validatePin.php/";
  url += "?doorId=";
  url += chipId;
  url += "&pin=";
  url += pin;
  
  // This will send the request to the server
  client.print(String("POST ") + url + " HTTP/1.1\r\n" +
               "Host: " + host + "\r\n" + 
               "Connection: close\r\n\r\n");
  delay(10);
  
  // Read all the lines of the reply from server and print them to Serial
  String reply;
  while(client.available()){
     reply = client.readString();
    Serial.print(reply);
  }

  if(reply == "1")
  {
    setDoor(true);
    delay(5000);
    setDoor(false);
  }
  
  server.send(200, "text/plain", "door opened");
}

void setup(void){
  chipId = ESP.getChipId();
  pinMode(led, OUTPUT);
  pinMode(D1, OUTPUT);
  pinMode(D3, OUTPUT);
  setDoor(false);
  digitalWrite(led, 0);
  Serial.begin(115200);
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

  server.onNotFound(handleNotFound);

  server.begin();
  Serial.println("HTTP server started");


  //DEBUG-------------------------------------------------------------------------------------

  WiFiClient client;
  const int httpPort = 80;
  const char* host = "entrymanagement.pe.hu";
  if (!client.connect(host, httpPort)) 
  {
    Serial.println("connection failed");
    return;
  }
  
  // We now create a URI for the request
  String url = "/api/registerPin.php";

  String postargs = "";
   
  postargs += "doorId=";
  postargs += chipId;
  postargs += "&pin=";
  postargs += "1234";
  
  // This will send the request to the server
  /*client.print(String("POST ") + url + " HTTP/1.1\r\n" +
               "Host: " + host + "\r\n" + 
               "Content-Type: application/x-www-form-urlencoded \r\n" +
               "Connection: close\r\n\r\r" + 
               postargs + "\r\n\r\n");*/
               client.print(String("POST") + " /api/registerPin.php HTTP/1.1\r\n" +
                              "Host: entrymanagement.pe.hu\r\n"+
                              "Cache-Control: no-cach\r\ne"+
                              "Content-Type: application/x-www-form-urlencoded\r\n\r\n"+

                              "doorId=1234567890&pin=12345678\r\n");
               
  Serial.print(String("POST ") + url + " HTTP/1.1\r\n" +
               "Host: " + host + "\r\n" + 
               "Content-Type: application/x-www-form-urlencoded \r\n" +
               "Connection: close\r\n" + 
               postargs + "\r\n\r\n");
  delay(10);
  
  // Read all the lines of the reply from server and print them to Serial
  String reply;
  while(client.available()){
    reply = client.readStringUntil('\r');
    Serial.print(reply);
  }
  Serial.println("finished");
}

void loop(void){
  server.handleClient();
  //Serial.print(".");
}

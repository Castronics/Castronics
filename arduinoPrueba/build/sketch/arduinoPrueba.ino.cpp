#include <Arduino.h>
#line 1 "C:\\Users\\CASTRONICS\\Desktop\\arduinoPrueba\\arduinoPrueba.ino"
int LED;
int PIN = 3;

#line 4 "C:\\Users\\CASTRONICS\\Desktop\\arduinoPrueba\\arduinoPrueba.ino"
void setup();
#line 9 "C:\\Users\\CASTRONICS\\Desktop\\arduinoPrueba\\arduinoPrueba.ino"
void loop();
#line 4 "C:\\Users\\CASTRONICS\\Desktop\\arduinoPrueba\\arduinoPrueba.ino"
void setup()
{
    pinMode(PIN, OUTPUT);
}

void loop()
{
	digitalWrite(PIN, HIGH);
    delay(1000);
    digitalWrite(PIN, LOW);
    delay(1000);
}


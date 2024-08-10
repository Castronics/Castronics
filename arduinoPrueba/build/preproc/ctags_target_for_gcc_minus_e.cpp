# 1 "C:\\Users\\CASTRONICS\\Desktop\\arduinoPrueba\\arduinoPrueba.ino"
int LED;
int PIN = 3;

void setup()
{
    pinMode(PIN, 0x1);
}

void loop()
{
 digitalWrite(PIN, 0x1);
    delay(1000);
    digitalWrite(PIN, 0x0);
    delay(1000);
}

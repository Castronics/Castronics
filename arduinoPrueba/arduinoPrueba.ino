int LED;
int PIN = 3;

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

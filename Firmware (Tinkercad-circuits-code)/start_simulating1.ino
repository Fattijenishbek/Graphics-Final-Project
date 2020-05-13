#include <Servo.h>



int pos=0;

int but = 0;

Servo servo_0;

void setup()
{
  pinMode(2, INPUT);
  servo_0.attach(0);

}

void loop()
{
  but = digitalRead(2);
  delay(1); // Wait for 1 millisecond(s)
  if (but == 0) {
    for (; pos >= 40; pos -= 1) {
      servo_0.write(pos);
    }
  } else {
    for (; pos <= 70; pos += 1) {
      servo_0.write(pos);
      delay(10); // Wait for 10 millisecond(s)
    }
  }
}
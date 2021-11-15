#define WINDSHIELD_WASHER_INPUT 2
#define HEADLIGHT_WASHER_OUTPUT_PIN 4
#define HEADLIGHT_WASHER_DELAY 3000
#define HEADLIGHT_WASHING_TIME 1000

uint8_t headlights_washed;
void HEADLIGHT_WASHER_RELAY_OUTPUT();

void setup()
{
  //set output low, just to be sure it will not fire when starting
  digitalWrite(HEADLIGHT_WASHER_OUTPUT_PIN, LOW);
  pinMode(HEADLIGHT_WASHER_OUTPUT_PIN, OUTPUT);
  digitalWrite(HEADLIGHT_WASHER_OUTPUT_PIN, LOW);
  //input is enabled when pulled down, so we must enable it with input pullup
  pinMode(WINDSHIELD_WASHER_INPUT, INPUT_PULLUP);
  digitalWrite(HEADLIGHT_WASHER_OUTPUT_PIN, LOW);
  //initialize variable, just to be sure
  headlights_washed = 0;
}

void loop() {
  //over and over check input pin 
  if (!digitalRead(WINDSHIELD_WASHER_INPUT)) //windshield washer on
  {
    //input pin is low = we are cleaning windshield
    uint16_t time = HEADLIGHT_WASHER_DELAY;
    while (!digitalRead(WINDSHIELD_WASHER_INPUT) && time > 0) { //check if we are continuesly washing windshield for 3seconds
      delay(1);
      time--;
    }
    if (time == 0) { //washing windscreen for more then 3s, so clean 
      HEADLIGHT_WASHER_RELAY_OUTPUT(); //wash headlights
      while (!digitalRead(WINDSHIELD_WASHER_INPUT)); //wait untill washing of windshiled stop
    }
  }
}

void HEADLIGHT_WASHER_RELAY_OUTPUT()
{
  digitalWrite(HEADLIGHT_WASHER_OUTPUT_PIN, HIGH);
  delay(HEADLIGHT_WASHING_TIME);
  digitalWrite(HEADLIGHT_WASHER_OUTPUT_PIN, LOW);
  headlights_washed = 1;
}

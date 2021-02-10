void setup() {
  
  // Open serial connection at 9600 Bd.
  Serial.begin(9600);
}

void loop() {
  
  // Print "Hello world!" in Serial monitor every second.
  Serial.println("Hello world!");
  delay(1000);
}

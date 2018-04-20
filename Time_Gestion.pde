int currentTime;
int pastTime = 0;
int deltaTime;

int lastShown = 0;
int showRate = 15;

void timeCalc(){
  
  pastTime = currentTime;
  currentTime = millis();
  
  deltaTime = currentTime - pastTime;
  
}
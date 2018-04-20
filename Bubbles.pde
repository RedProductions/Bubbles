void setup(){
  
  fullScreen();
  
  frameRate(120);
  
  background(0);
  
  strokeWeight(2);
  
  colorMode(HSB);
  
}


void draw(){
  
  timeCalc();
  
  updateall();
  
  showall();
  
}
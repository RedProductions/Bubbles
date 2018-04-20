class bubble{
  
  PVector pos = new PVector();
  PVector vel = new PVector();
  
  float size;
  float popsize;
  
  boolean alive;
  
  float lifetime;
  float maxlifetime;
  
  bubble(){
    
    pos.x = random(-3, width + 3);
    pos.y = height;
    
    size = 1.5;
    popsize = random(5) * 2;
    
    lifetime = 0;
    maxlifetime = random(150, 250);
    
    vel.y = 0;
    vel.x = random(-1, 1);
    
    alive = true;
    
  }
  
  
  boolean is_alive(){return alive;}
  
  void show(){
    
    stroke(((height - pos.y) * 255 / (height*(size - 0.5))) % 255, 255, 255);
    ellipse(pos.x, pos.y, size*2, size*2);
    
  }
  
  
  void update(){
    
    if(size > popsize){
      lifetime++;
      
      if(lifetime > maxlifetime * (10 - size)){
        alive = false;
      }
    }
    
    if(size < popsize){
      
      size += 0.1;
      
    }else {
      
      vel.y += grav;
      pos.y += (vel.y * deltaTime / showRate);
      
      vel.x *= 0.98;
      pos.x += (vel.x * deltaTime / showRate);
      
      if(vel.y < maxspeed * (size/2)){
        vel.y = maxspeed * (size/2);
      }
      
      if(pos.y + size < 0){
        alive = false;
      }else if(pos.y < height/2){
        if(pos.x + size < 0 || pos.x - size > width){
          alive = false;
        }
      }
      
    }
    
  }
  
}
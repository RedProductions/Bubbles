void showall(){
  
  if(lastShown + showRate <= currentTime){
    
    fill(0, 40);
    noStroke();
    rect(0, 0, width, height);
    noFill();
  
    for(bubble part : b){
      
      part.show();
      
    }
    
    lastShown = currentTime;
    
  }
  
}


void updateall(){
  
  for(int i = b.size() - 1; i >= 0; i--){
    
    bubble part = b.get(i);
    
    part.update();
    
    if(!part.is_alive()){
      
      b.remove(i);
      
    }
    
  }
  
  for(int i = 0; i < spawnrate; i++){
    
    b.add(new bubble());
    
  }
  
  
}
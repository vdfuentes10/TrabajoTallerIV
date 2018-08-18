class Lluvia{
  float x = random(width);
  float y = random(-200,-100);
  
  float yvel = random(1,8);
  float tam = random(1,4);
  
  void caida(){
    y += yvel; 
    
    if(y>height){
      y = random(-200,100);
    }
  
  }
  void show(){
    stroke(255);
    line(x,y,x,y+tam);
  }
  
  
}

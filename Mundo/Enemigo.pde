class Enemigo{
  float x = random(width);
  float y = random(-1000,-100);
  
  
  float yvel = random(1,3);
  float tam = 20;
  int numEn = int(random(0,3));
  
  PImage img = loadImage("enemigo"+numEn+".png");
  
  void caida(){
    y += yvel; 
    
    if(y>height){
      y = random(-400,100);
      x = random(width);
    }
  }
  void show(){
    image(img,x,y,tam,tam);
  }
  public float getX(){
    return x;
  }
  public float getY(){
    return y;
  }
}

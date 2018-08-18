class Nave{
  float x = width/2;
  float y = height-20;
  boolean vivo = true;
  
  float velMov = 5;
  float tam =20;
  
  PImage img = loadImage("nave.png");
  
  void movDer(){
    x -= velMov;
    if(x>width){
      x=0;
    }
  }
  void movIzq(){
    x += velMov;
    if(x<0){
      x=width;
    }
  }
  
  void show(){
    stroke(0,255,0);
    image(img,x,y,tam,tam);
  }
  void muerte(){
    vivo=false;
  }
  void vida(){
    vivo=true;
  }
  public float getX(){
    return x;
  }
   public float getY(){
    return y;
  }
}

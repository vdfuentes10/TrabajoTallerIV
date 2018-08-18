class Shoot{
  float x = -10;
  float y = 1;
  boolean disparado =false;
  float yvel = -10;
  float tam = 300;
  
  void disparo(){
    y += yvel; 
  }
  void siDis(){
    disparado = true;
  }
  void noDis(){
    disparado = false;
  }
  void show(){
    stroke(0,255,0);
    line(x,y,x,y+tam);
    
    line(x,y+tam+3,x,y+tam+6);
    line(x,y+tam+8,x,y+tam+9);
  } 
  void setX(float acX){
    x = acX;
  }
  void setY(float acY){
    y= acY;
  }
}

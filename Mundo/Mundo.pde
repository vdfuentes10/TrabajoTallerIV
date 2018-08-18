
Lluvia[] gotas = new Lluvia[100];
Enemigo[] enemigos = new Enemigo[50];
Nave nave;
Shoot shot;
int puntos= 0;
void setup(){
  shot = new Shoot();
  size(640,360);
  for(int i = 0; i<gotas.length; i++){
    gotas[i] = new Lluvia();
  }
  
  for(int i = 0; i<enemigos.length; i++){
    enemigos[i] = new Enemigo();
  }
  nave = new Nave();
}

void draw(){
  background(0);
  for(int i = 0; i<gotas.length; i++){
    gotas[i].caida();
    gotas[i].show();
  }
  
  for(int i = 0; i<enemigos.length; i++){
    enemigos[i].caida();
    enemigos[i].show();
    
    if(enemigos[i].getY()>(height-20) && (enemigos[i].getX()<(nave.getX()+10) && enemigos[i].getX()>(nave.getX()-10))){
      nave.muerte();
    }
  }
  nave.show();
  if(shot.disparado !=true){
    shot =new Shoot();
  }
  else{
    shot.disparo();
  }
  if (nave.vivo==true){
    puntos +=1;
    fill(0,255,0);
    text("Puntos: "+puntos,20,20);
    
    if (keyPressed) {
      if (key == 'a') {
        nave.movDer();
        nave.show();
      }
      else if(key == 'd'){
        nave.movIzq();
        nave.show();
      }
      else if(key == 's'){
        shot = new Shoot();
        shot.setX(nave.getX()+10);
        shot.setY(20);
        shot.siDis();
        shot.show();
        for(int i = 0; i<enemigos.length; i++){
          if(enemigos[i].getX()-10<nave.getX()+10 && enemigos[i].getX()+10>nave.getX()+10){
            enemigos[i] = new Enemigo();
            puntos+=100;
          }
        }
      }
    }
  }
  else{
      textSize(32);
      fill(255,0,0);
      text("GAME OVER",(width/2)-80,height/2);
      textSize(16);
      fill(0,255,0);
      text("Puntos: "+puntos,(width/2)-40,(height/2+20));
      if (keyPressed) {
        
        if(key == 'r'){
          nave.vida();
          for(int i = 0; i<gotas.length; i++){
            gotas[i] = new Lluvia();
          }
          
          for(int i = 0; i<enemigos.length; i++){
            enemigos[i] = new Enemigo();
          }
          nave = new Nave();
        }
    }
  }
}

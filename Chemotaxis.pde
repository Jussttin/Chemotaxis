Mover [] Candy;
int colorR = (int)(Math.random()*256);
int colorB = (int)(Math.random()*256);
int colorG = (int)(Math.random()*256);
void setup(){
  size(750,750);
  background(0);
  Candy = new Mover[10];
  for(int i = 0; i < Candy.length;i++)
  {
    Candy[i] = new Mover();
  }
}
void draw(){
background(0);
  for(int i = 0; i < Candy.length;i++)
  {
 Candy[i].show();
 Candy[i].show2();
 Candy[i].move();
  }
  if(mousePressed){
    noLoop();
    background(0);
    colorR = (int)(Math.random()*256);
    colorB = (int)(Math.random()*256);
    colorG = (int)(Math.random()*256);
    for(int i = 0; i < Candy.length;i++){
      Candy[i] = new Mover();
    }
    loop();
  }
}
class Mover{
  public int x, y, candyX, candyY;
  Mover(){
x = 0;
y = (int)(Math.random()*751);
candyX = (int)(Math.random()*751);
candyY = (int)(Math.random()*751);
  }
  void move(){
    if(x < candyX){
      x  = x + 2;   
    }else{
      x = x - 2;
    }
    if(y < candyY){
      y  = y + 2;   
    }else{
      y = y - 2;
    }
  }
  void show(){
    //constructing and placing the candy
    fill(colorR,colorB,colorG);
    stroke(colorR,colorB,colorG);
    ellipse(candyX, candyY, 40, 30);
    fill(colorR,colorB,colorG);
    stroke(colorR,colorB,colorG);
    triangle(candyX-28, candyY-10, candyX-28, candyY+10, candyX-18, candyY);
    triangle(candyX+28, candyY+10, candyX+28, candyY-10, candyX+18, candyY);
  }
  void show2(){
    //constructing the pumpkin
    fill(#9B4700);
    stroke(#9B4700);
    rect(x-4, y-33, 10, 15);
    fill(#FF8F31);
    ellipse(x,y,60,50);
    fill(#FFAA62);
    triangle(x-15, y, x-5, y, x-10, y-10);
    triangle(x+10, y, x+20, y, x+15, y-10);
    stroke(#FFAA62);
    arc(x+3, y+10, 15, 10, 0, PI);
  }
}

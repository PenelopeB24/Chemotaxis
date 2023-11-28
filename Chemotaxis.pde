Bacterium[] bacteria;
int nob = 100; 
Food aFood;
void setup () {
  size(400, 600);
  bacteria = new Bacterium[nob];
  aFood = new Food(mouseX, mouseY);
  for (int i = 0; i < bacteria.length; i++) {
    bacteria[i] = new Bacterium(width/2, height/2);
  }
}
void draw() {
  background(255);
  aFood.show();
  for (int i = 0; i< bacteria.length; i++) {
    bacteria[i].show();
    bacteria[i].move();
  }
}
void mouseClicked() {
  aFood = new Food(mouseX, mouseY);
}
class Bacterium    
 {     
  int x, y;
  Bacterium(int a, int b){
    x = a;
    y = b; 
  }
    void move(){
     int incX, incY;
     if (aFood.y < y) {
     incY = -1;
     }
     else {
       incY = 1;
     }
       if (aFood.x < x) {
     incX = -1;
     }
     else {
       incX = 1;
     }
     x += incX*(int)(Math.random()*4)-1;
     y += incY*(int)(Math.random()*4)-1;
  }
  void show(){
    ellipse(x, y, 10, 10);
  }
 }  
class Food
{
   int x, y;
  int r, g, b;
  int mySize;
  Food(int x_, int y_) {
    x = x_;
    y = y_;
    r= (int)(Math.random()*256);
    g= (int)(Math.random()*256);
    b= (int)(Math.random()*256);
  }
  void move() {
    x= 0;
    y= 0;
  }
  void show() {
    mySize = 10;
    fill(r, g, b, 150);
    rect(x, y, mySize, mySize);
  }
}

Ball b;
float centerX;

void setup(){
  size(600, 420);
  b = new Ball(width/ 2, height - 20);
  centerX = width / 2;
}

void draw(){
  background(0);
  b.show();
  b.update();
  b.applyForce(0, 0.2);
}

void keyPressed(){
  if(key == ' '){
    b.applyForce(0, -7);
  }
}

void mousePressed(){
  if(mouseX < centerX)
    b.applyForce(-7, 0);
   else
    b.applyForce(7, 0);
}

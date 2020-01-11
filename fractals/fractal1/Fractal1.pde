
void setup(){
  size(600, 600);
}
void draw(){
  background(0);
  noFill();
  stroke(255);
  drawCircle(width / 2, height / 2, width /2);
}

void drawCircle(float x, float y, float d){
  ellipse(x, y, d, d);
  if(d > 2){
    drawCircle(x + d/2, y, d /2);
    drawCircle(x - d/2, y, d /2);
    //drawCircle(x, y + d/2, d /2);
    drawCircle(x, y - d/2, d /2);
  }  
}

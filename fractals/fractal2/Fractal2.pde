
void setup(){
  size(600, 600);
}

void draw(){
  background(0);
  fill(255);
  drawLine(10, 10, width - 20);
}

void drawLine(float x, float y, float len){
  float h = 30;
  if(len >= 4){
    rect(x, y, len, h / 3);
    y = y + h;
    drawLine(x, y, len/3);
    drawLine(x + len * 2/3, y, len/3);
  }
}

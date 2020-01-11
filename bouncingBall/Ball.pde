class Ball{
  float x, y;
  float xVelocity, yVelocity;
  float xAcceleration, yAcceleration;
  float r;
  
  Ball(float x, float y){
    this.x = x;
    this.y = y;
    r = 10;
    yVelocity = random(-10, -4);
  }
  
  void show(){
    ellipse(x, y, r * 2, r * 2);
  }
  
  void update(){
    xVelocity += xAcceleration;
    yVelocity += yAcceleration;
    
    x += xVelocity;
    y += yVelocity;
    
    xAcceleration *= 0;
    yAcceleration *= 0;
    
    if(y > height - r){
      y = height - r;
      yVelocity = -0.7 * yVelocity;
    }
    
    if(x > width - r){
      x = width - r;
      xVelocity = -0.7 * xVelocity;
    }
    
    if(y < r){
      yVelocity = -0.7 * yVelocity;
      y = r;
    }
    
    if(x < r){
      x = r;
      xVelocity = -0.7 * xVelocity;
    }
  }
  
  void applyForce(float xF, float yF){
    xAcceleration += xF;
    yAcceleration += yF;
  }
  
}

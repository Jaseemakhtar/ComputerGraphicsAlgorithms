class Particle{
  float x, y;
  float velocityX, velocityY;
  float accelerationX;
  float accelerationY;
  boolean isFirework;
  int[] rgb = new int[3];
  int r, g, b;
  int alpha = 255;
  
  public Particle(float x, float y, boolean isFirework, int rgb[]){
    this.x = x;
    this.y = y;
    this.isFirework = isFirework;
    
    if(this.isFirework){
      velocityY = random(-11, -8);
      velocityX = 0;
      r = floor(random(255));
      this.rgb[0] = r;
      g = floor(random(255));
      this.rgb[1] = g;
      b = floor(random(255));
      this.rgb[2] = b;
    }else{
      velocityY = random(-6, 6);
      velocityX = random(-6, 6);
      velocityY = velocityY * 0.15;
      velocityX = velocityX * 0.15;
      r = rgb[0];
      
      g = rgb[1];
      
      b = rgb[2];
    }
      
  }
  
  public void show(){
    stroke(r, g, b, alpha);
    strokeWeight(4);
    point(x, y);
  }
  
  public void update(){
      if(!isFirework)
        alpha -= 3;
      velocityY += accelerationY;
      velocityX += accelerationX;
      y += velocityY;
      x += velocityX;
      accelerationX *= 0;
      accelerationY *= 0;
  }
  
  public boolean isDone(){
    return alpha <= 0;
  }
 
  public void applyGravity(float x, float y){
    accelerationY += y;
    accelerationX += x;
  }
}

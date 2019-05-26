class Firework{
  float x, y;
  Particle p;
  ArrayList<Particle> particles;
  boolean exploded;
  
  public Firework(float x, float y){
    this.x = x;
    this.y = y;
    p = new Particle(x, y, true, null);
    particles = new ArrayList();
    
  }
  
  public void show(){
    if(!exploded){
      p.show();
    }else{
      for(int i = 0; i < particles.size(); i++){
        particles.get(i).show();
      }
    }
  }
  
  public void update(){
    if(!exploded){
      p.update();
      p.applyGravity(0, 0.12);
      if(p.velocityY >= 0){
        exploded = true;
        for(int i = 0; i < 100; i++){
          particles.add(new Particle(p.x, p.y, false, p.rgb));
        }
      }
    }else{
      for(int i = 0; i < particles.size(); i++){
        if(!particles.get(i).isDone()){
          particles.get(i).update();
          particles.get(i).applyGravity(0, 0.08);
        }else{
          particles.remove(i); 
        }
      }
    }
  }
  
  public boolean isDone(){
    return particles.size() <= 0;
  }
}

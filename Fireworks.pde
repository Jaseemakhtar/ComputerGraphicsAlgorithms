//Firework[] fireworks;
ArrayList<Firework> fireworks;
void setup(){
  size(720, 480);
  background(0, 0, 0, 255);
  fireworks = new ArrayList();
  
  //fireworks = new Firework[14];
  //for(int i =0; i<fireworks.length; i++){
  //  fireworks[i] = new Firework(random(width), height);
  //}
  //for(int i = 0; i < 100; i++){
  //  fireworks.add(new Firework(random(width), height));
  //}
}

void draw(){
   background(0, 0, 0, 155);
  
  if(fireworks.size() < 10){
    fireworks.add(new Firework(random(width), height));
  }
  for(int i = 0; i < fireworks.size(); i++){
    fireworks.get(i).update();
    fireworks.get(i).show();
    if(fireworks.get(i).exploded && fireworks.get(i).isDone()){
      fireworks.remove(i);
    }
  }
  
  //for(int i =0; i<fireworks.length; i++){
  //  fireworks[i].update();
  //  fireworks[i].show();
  //}
}

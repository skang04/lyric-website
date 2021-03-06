class Drop {
  float x = random(width);
  float y = random(-500,-50);
  float z = random(0, 20);
  float len = map(z, 0, 20, 10, 20);
   float yspeed = map(z, 0, 20, 4 ,10);
  
  void fall() {
    y = y + yspeed;
    float grav = map(z, 0, 20, 0, 0.2);
    //yspeed = yspeed + 0.2;
    
    if (y > height) {
      y = random (-200,-100);
      yspeed = random(4,10);
    }
  }
  
  void show() {
    float thick = map(z, 0, 20, 1, 3);
    strokeWeight(thick);
    stroke(196, 239, 255);
    line(x,y,x,y+len);
  }
}
Drop[] drops = new Drop[500];

void setup() {
  size(612, 792);
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Drop();
  }
}

void draw() {
  background(0,0,0,0);
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
    drops[i].show();
  }
}

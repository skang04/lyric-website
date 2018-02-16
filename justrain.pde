class Drop {
  float x = random(width);
  float y = random(-900,-30);
  float z = random(0, 20);
  float len = map(z, 0, 20, 10, 20);
  float yspeed = map(z, 0, 20, 4 ,10);
  
  void fall() {
    y = y + yspeed;
    float grav = map(z, 0, 20, 0, 0.2);
    yspeed = yspeed + 0.8;
    
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
  size(921,906);
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Drop();
  }
}

void draw() {
   background(loadImage("background.png"));
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
    drops[i].show();
  }
}
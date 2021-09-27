class CatBomb {
  PImage cat1;
  PImage cat2;
  PImage cat3;
  float speed1;
  float speed2;
  float speed3;
  float a1;
  float a2;
  float a3;
  
  float g = 0.1;
  
  float dx1;
  float dx2;
  float dx3;
  float dy1;
  float dy2;
  float dy3;
  
  float x1, y1;
  float x2, y2;
  float x3, y3;
  
  CatBomb(float x, float y) {
    cat1 = loadImage("cat.png");
    cat2 = loadImage("cat.png");
    cat3 = loadImage("cat.png");
    
    cat1.resize(120, 80);
    cat2.resize(120, 80);
    cat3.resize(120, 80);
    
    speed1 = random(10, 20);
    speed2 = random(10, 20);
    speed3 = random(10, 20);
    
    a1 = random(PI);
    a2 = random(PI);
    a3 = random(PI);
    
    dx1 = cos(a1)*speed1;
    dx2 = cos(a2)*speed2;
    dx3 = cos(a3)*speed3;
    
    dy1 = -sin(a1)*speed1;
    dy2 = -sin(a2)*speed2;
    dy3 = -sin(a3)*speed3;
    
    x1 = x;
    x2 = x;
    x3 = x;
    
    y1 = y;
    y2 = y;
    y3 = y;
    
    
  }
  
  void drawCats() {
    image(cat1, x1, y1);
    image(cat2, x2, y2);
    image(cat3, x3, y3);
    
    x1 += dx1;
    x2 += dx2;
    x3 += dx3;
    y1 += dy1;
    y2 += dy2;
    y3 += dy3;
    
    dy1 += g;
    dy2 += g;
    dy3 += g;
  }
  
    boolean catOutOfScreen() {
    if (x1>=0&&x1<width && y1>=0&&y1<height) return false;
    if (x2>=0&&x2<width && y2>=0&&y2<height) return false;
    if (x2>=0&&x2<width && y3>=0&&y3<height) return false;
    return true;
  }
    
  
}

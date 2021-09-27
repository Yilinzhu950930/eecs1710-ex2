PImage sky1;
PImage cat;
PImage plane;
PImage bomb;
float skyX;
float speedX = -1;

float bombSpeed = 4;
float bombX;
float bombY = 2222;

CatBomb catBomb;

void setup() {
  size(800, 600, P2D);
  sky1 = loadImage("sky1.png");
  cat = loadImage("cat.png");
  plane = loadImage("plane.png");
  bomb = loadImage("bomb.png");
  bomb.resize(80,80);
  
  skyX=0;
}

void draw() {
  // draw sky backgroud
  image(sky1, skyX, 0);
  skyX += speedX;
  if(skyX + sky1.width<width){
    skyX = 0;
  }
  
  // draw plane
  float dx = mouseX*100.0/width;
  float dy = mouseY*50.0/width;
  float planeX = 80-plane.width/2+dx;
  float planeY = 80-plane.height/2+dy;
  image(plane, planeX, planeY, plane.width * (height / plane.height), height);

  if(catBomb!=null) {
    catBomb.drawCats();
    if(catBomb.catOutOfScreen()) {
      catBomb = null;
    }
  }
  
  
  // draw bomb

  if(catBomb==null) {
    if(bombY>height) {
      if(catBomb==null) {
        catBomb = new CatBomb(bombX, bombY);
      }      
      bombY = planeY+ plane.height/3*2+dy;
      bombX = planeX+ plane.width/3*2+dx;
    }else{
      bombY += bombSpeed;
    }
        
    image(bomb, bombX, bombY);
  }
  
  
   
}

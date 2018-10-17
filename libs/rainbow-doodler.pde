// a black canvas with a rainbow paintbrush

float r, g, b = 0;
float screenColor = 2;
float rate = 10;


void setup() {
  strokeWeight(5);
  smooth();
  background(0);
}

void draw() {
}

void mouseDragged() {
  rainbowColor();
  line(pmouseX,pmouseY,mouseX,mouseY);
}

void rainbowColor() {
  if(frameCount % 1 ==0) {
    stroke(r,g,b); //CAN CHANGE TO OBJECT
  }
  
  
//+0,0,0 RED
  if(screenColor==1){
    r=r+rate;
    g=0;
    b=0;
  }
  if(r>=255 && g==0 && b==0) {
    screenColor=2;
  } 
//255,+0,0 YELLOW
  if(screenColor==2){
    r=255;
    g=g+rate;
    b=0;
  }
  if(r==255 && g>=255 && b==0) {
    screenColor=3;
  }
//-255,255,0 GREEN
  if(screenColor==3) {
    r=r-rate;
    g=255;
    b=0;
  }
  if(r<=0 && g==255 && b==0) {
    screenColor=4;
  }
//0,255,+0 INDIGO
  if(screenColor==4) {
    r=0;
    g=255;
    b=b+rate;
  }
  if(r==0 && g==255 & b>=255) {
    screenColor=5;
  }
//0,-255,255 BLUE
  if(screenColor==5) {
    r=0;
    g=g-rate;
    b=255;
  }
  if(r==0 && g<=0 && b==255) {
    screenColor=6;
  } 
//+0,0,255 MAGENTA
  if(screenColor==6) {
    r=r+rate;
    g=0;
    b=255;
  }
  if(r>=255 && g==0 && b==255) {
    screenColor=7;
  }
//255,0,-255
  if(screenColor==7) {
    r=255;
    g=0;
    b=b-rate;
  }
  if(r==255 && g==0 && b<=0){
    screenColor=2;
  }
}
int startX = 0;
int startY = 0;
int endX = 0;
int endY = 150;

void setup()
{
  size(1000,1000);
  strokeWeight(10);
  background(0);
  frameRate(10);
  
  
}
int n = 5;
void draw()
{
  translate(500,500);
  
  
  while (endX<600){
    
    endX= startX+(int)(Math.random()*10);
    endY=startY+((int)(Math.random()*19)-9);
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
    if(startX<300){
      stroke(rand(127,0),rand(127,0),rand(126,126));
    } else{
      
      stroke(rand(127,0),rand(255,0),rand(127,0));
    }
    rotate(PI/n);
  }
  startX= 0;
  startY = 0;
  endX=0;
  endY=150;

}
int  rand(int x, int min){
  int joe = (int)(Math.random()*x)+min;
  return joe;
}
void mousePressed()
{

  background(0);
  n=rand(30,1);
}

//Variables
float t;
static final int numberLines = 25;



void setup(){
  background (50);
  size(800,800);
  
}

void draw(){
  background (50);

  strokeWeight(5);
  
  translate(width/2,height/2);
  
  //Draws the individual lines, assign colour
  for(int i=0; i<numberLines; i++){
    stroke(0,int(random(150,200)),int(random(150,200)));
    line(x1(i+t),y1(i+t),x2(i+t),y2(i+t));
  }
  t+=0.5;
}

//The values of x and y where the lines are drawn between
float x1(float t){
  return sin(t/5)*200 + sin(t/30)*150;
  
}
float y1(float t){
  return cos(t/10)*100 + cos(t/20)*200;
}

float x2(float t){
  return cos(t/50)*200 + cos(t/20)*20;
}
float y2(float t){
  return sin(t/10)*200 + sin(t/50)*100;
}

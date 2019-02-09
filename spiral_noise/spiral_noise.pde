
int centx = 300;
int centy = 300;
float x,y;



//void setup(){
size(600,600);
background(255);
strokeWeight(0.5);
smooth();
//}

//void draw(){
  for(int i = 0; i<100; i++){
    //spiral();
  //}
//}

//void spiral(){
  float lastx = -999;
  float lasty = -999;
  float radius = 10;
  float radiusNoise = random(10);
  stroke(random(20),random(50),random(80),80);
  
  int startangle = int(random(360));
  int endangle = 1440 + int(random(1440));
  int anglestep = 5 + int(random(3));
  for(float ang = startangle; ang <= endangle; ang += anglestep){
    radiusNoise += 0.05;
    radius += 0.5;
    float thisRadius = radius + (noise(radiusNoise) * 200) - 100;
    float rad = radians(ang);
    x = centx + (thisRadius * cos(rad));
    y = centy + (thisRadius * sin(rad));
    if(lastx > -999){
      line(x,y,lastx,lasty);
    }
    lastx = x;
    lasty = y;
  }
}
filter(INVERT);
saveFrame("frames/######.png");

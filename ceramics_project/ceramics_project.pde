int z;
int w;
int w1;
int w2;
int w3;
int w4;

void setup(){
size(800,800);
int z=0;
int w=0;
int w1=0;
int w2=0;
int w3=0;
int w4=0;
}

void draw(){
  noStroke();
fill(#CBBD93);
rect(0,600,800,200);

fill(#7fcdff);
rect(0,400,800,100);

fill(#9EC9E4);
rect(0,0,800,400);

fill(#FFF300);
ellipse(800,0,350,350);


fill(#CBBD93);
beachshape(0+z,0);

fill(#7fcdff);
watershape(0+z,0);

fill(#CBBD93);
beachshape(300+z,0);

fill(#7fcdff);
watershape(300+z,0);

fill(#CBBD93);
beachshape(600+z,0);

fill(#7fcdff);
watershape(600+z,0);

fill(#CBBD93);
beachshape(-300+z,0);

fill(#7fcdff);
watershape(-300+z,0);

fill(#7fcdff);
beachshape(-300+z,-200);

fill(#7fcdff);
beachshape(0+z,-200);

fill(#7fcdff);
beachshape(300+z,-200);

fill(#7fcdff);
beachshape(600+z,-200);

scale(0.5);
cloud(200+w,100);
cloud(800+w1,300);
cloud(1200+w2,500);
cloud(-300+w3,400);
cloud(-1000+w4,500);

scale(2);
tree(0,0);

pattern(0,0);
pattern(300,-75);
pattern(350,50);

fill(#F5FA0F);
star(350,700,20,30,5);
star(200,650,20,30,5);

z=z+1;
if (z > 300) {
  z = 0;
}

w=w+2;
if (w > 1500) {
  w = -1200;
}
w1=w1+2;
if (w1 > 1200) {
  w1 = -1200;
}
w2=w2+2;
if (w2 > 1500) {
  w2= -1500;
}
w3=w3+2;
if (w3 > 2100) {
  w3 =-1500;
}
w4=w4+2;
if (w4> 2500) {
  w4 = -1500;
}
}

void beachshape(int x,int y){
beginShape();
vertex(x,y+600);    
vertex(x+100,y+580);
vertex(x+150,y+580);
vertex(x+200,y+590);  
vertex(x+300,y+600);  
endShape(CLOSE);
}

void watershape(int x,int y){
beginShape();
vertex(x-100,y+500);
vertex(x-100,y+590);
vertex(x,y+600);    
vertex(x+150,y+590);  
vertex(x+200,y+590);
vertex(x+200,y+500);
endShape(CLOSE);
}

void cloud(int x,int y){
  noStroke();
fill(255);
ellipse(x,y,200,100);
ellipse(x+100,y+50,200,100);
ellipse(x-50,y+50,200,100);
}

void tree(int x,int y){
  fill(#D69302);
beginShape();
vertex(0,800);
vertex(125,800);
vertex(75,500);
vertex(100,300);
vertex(0,300);
endShape();

fill(#0AD800);
noStroke();
ellipse(0,300,200,100);
ellipse(100,300,50,50);
ellipse(100,200,100,50);
ellipse(100,250,100,100);
ellipse(25,250,150,150);
ellipse(25,175,150,100);
}

void pattern(int x,int y){
  stroke(1);
line(200+x,700+y,250+x,690+y);
line(250+x,690+y,300+x,700+y);
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

int z;
int w;

void setup(){
size(800,800);
int z=0;
int w=0;
}

void draw(){
  noStroke();
fill(#CBBD93);
rect(0,600,800,200);

fill(#7fcdff);
rect(0,400,800,100);

fill(#9EC9E4);
rect(0,0,800,400);

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

cloud(200+w,100);

z=z+1;
if (z > 300) {
  z = 0;
}

w=w+10;
if (w > 800) {
  w = -300;
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

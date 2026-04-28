int z;

void setup(){
size(800,800);
int z=0;
}

void draw(){
 noStroke();
fill(#CBBD93);
rect(0,600,800,200);

fill(#7fcdff);
rect(0,400,800,100);

fill(#9EC9E4);
rect(0,0,800,400);

beachshape(0+z,0);

watershape(0+z,0);

beachshape(300+z,0);

watershape(300+z,0);

beachshape(600+z,0);

watershape(600+z,0);

beachshape(-300+z,0);

watershape(-300+z,0);
z=z+1;
if (z > 300) {
  z = 0;
}
}

void beachshape(int x,int y){
fill(#CBBD93);
beginShape();
vertex(x,600);    
vertex(x+100,550);
vertex(x+150,535);
vertex(x+200,540);  
vertex(x+300,600);  
endShape(CLOSE);
}

void watershape(int x,int y){
fill(#7fcdff);
beginShape();
vertex(x-100,500);
vertex(x-100,540);
vertex(x,600);    
vertex(x+150,535);  
vertex(x+200,540);
vertex(x+200,500);
endShape(CLOSE);
}

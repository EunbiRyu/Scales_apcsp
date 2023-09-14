void setup() {
  size(990, 990); 
  noLoop(); //stops the draw() function from repeating
  background(#19AF72);
}
void draw() {
  //your code here
  //bezier(20,20,10,100,100,40,90,90);
  
  for(int y = 10; y < 970; y += 69){
    for(int x = 10; x < 970; x += 69){
      scale(x,y);
      
    }
  }

}
void scale(int x, int y) {
  //your code here
  int diam = 0;
  float r = 0;

  if(Math.random() < 0.5){
    fill(#AF193E);
    ellipse(31+x,38+y,15,15);
  } else{
    fill(#A6FCD9);
    ellipse(31+x,38+y,15,15);
  }

  noFill();
  while(diam < 30){
    stroke(r/2,0,r);
  //  bezier(20,20,10+diam,100+diam,100+diam,40+diam,90,90);
    bezier(x,y,x+10+diam,y+100+diam,x+100+diam,y+40+diam,x,y);
    diam++;
    r+=255/30.0;
  }

}

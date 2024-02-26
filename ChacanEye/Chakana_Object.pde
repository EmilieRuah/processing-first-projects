class chakana {

  float rx ;  
  float ry ;
  float grl ;  
  float rl ; 
  float cx ; 
  float cy ;

  chakana(float rx_, float ry_, float grl_) {
    rx=rx_;
    ry=ry_;
    grl=grl_;
    rl = grl/6;
    cx = rx-grl/2 ;
    cy = ry-rl;
  }
  void display(color colorChkn) {
    rectMode(CENTER);
    strokeCap(ROUND);
    stroke(colorChkn);    
    strokeWeight(3);
    beginShape(POINTS);
    line(cx, cy, cx+rl, cy);
    line(cx+rl, cy, cx+rl, cy-rl);
    line(cx+rl, cy-rl, cx+rl*2, cy-rl);
    line(cx+rl*2, cy-rl, cx+rl*2, cy-rl*2);
    line(cx+rl*2, cy-rl*2, cx+rl*4, cy-rl*2);
    line(cx+rl*4, cy-rl*2, cx+rl*4, cy-rl);
    line(cx+rl*4, cy-rl, cx+rl*5, cy-rl);
    line(cx+rl*5, cy-rl, cx+rl*5, cy);
    line(cx+rl*5, cy, cx+rl*6, cy);
    line(cx+rl*6, cy, cx+rl*6, cy+rl);
    line(cx+rl*6, cy+rl, cx+rl*6, cy+rl*2);
    line(cx+rl*6, cy+rl*2, cx+rl*5, cy+rl*2);
    line(cx+rl*5, cy+rl*2, cx+rl*5, cy+rl*3);
    line(cx+rl*5, cy+rl*3, cx+rl*4, cy+rl*3);
    line(cx+rl*4, cy+rl*3, cx+rl*4, cy+rl*4);
    line(cx+rl*4, cy+rl*4, cx+rl*2, cy+rl*4);
    line(cx+rl*2, cy+rl*4, cx+rl*2, cy+rl*3);
    line(cx+rl*2, cy+rl*3, cx+rl, cy+rl*3);
    line(cx+rl, cy+rl*3, cx+rl, cy+rl*2);
    line(cx+rl, cy+rl*2, cx, cy+rl*2);
    line(cx, cy+rl*2, cx, cy);
    endShape(CLOSE);
  }
}

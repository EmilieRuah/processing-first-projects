class bird {
  float x1;
  float y1;
  float wings;
  float xmouv;
  float ymouv;
  float xdir;
  float ydir;

  bird() {
    x1=random(-100, 100);
    y1=random(-100,0);
    wings=random(1, 10);
    xmouv=random(2, 3);
    ymouv=random(1, 2);
    xdir = 1;
    ydir = 1;
  }

  void display() {
    stroke(0);
    fill(150);
    triangle(x1+wings, y1+random(10)+wings, x1, y1+wings, x1+random(10)+wings, y1+wings);
    fill(180);
    triangle(x1+wings+1, y1+random(10)+wings+1, x1, y1+wings+1, x1+random(5, 10)+wings+1, y1+wings+1);
  }

  void fly() {

    x1=x1+(xmouv*xdir);
    y1=y1+(ymouv*ydir);

    if ( (x1>width+width/5) || (x1<-width/5)  ) {
      xdir*=-1 ;
    }
    if ( (y1>height+height/5) || (y1<-height/5)  ) {
      ydir*=-1 ;
    }
  }
}

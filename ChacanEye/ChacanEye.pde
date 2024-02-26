chakana chakana1;
chakana chakana2;
chakana chakana3;

pupille pupille1;
//PImage ciel;

float bordure ;
float space;
float x ;
float y ;
float oeilX1 ;
float oeilY1 ;
float oeilX2 ;
float oeilTx1 ;
float oeilTy1 ;
float oeilTx2 ;
float oeilTy2 ;
color colorChkn ;

void setup() {
  size(1080, 1080, P3D);
  smooth();
  
  bordure = 80;
  x = width/2 ;
  y = height/2 ;
  space= 20 ;
  oeilX1= bordure;
  oeilY1= height/2;
  oeilX2= width-bordure;
  oeilTx1= x;
  oeilTy1= y-(width-bordure*2)/4.2;
  oeilTx2 = x;
  oeilTy2 = y+(width-bordure*2)/4.2;
  colorChkn = #FFE708;
   
  chakana3 = new chakana(x - space, y - space, width -bordure*2 ) ;
  chakana1= new chakana(x, y, width -bordure*2) ;
  chakana2 = new chakana(x + space, y + space, width -bordure*2 ) ;
  
  pupille1= new pupille(x,y,x,(width-bordure*2)/15);
  
}

void draw() {
 
  background(0);  
  
 chakana1.display(colorChkn);
 chakana2.display(colorChkn);
 chakana3.display(colorChkn);
 
  // Oeil 
  beginShape();
  noFill();
  strokeWeight(3);
  bezier(oeilX1, oeilY1, oeilTx1, oeilTy1, oeilTx1, oeilTy1, oeilX2, oeilY1);
  bezier(oeilX1, oeilY1, oeilTx2, oeilTy2, oeilTx2, oeilTy2, oeilX2, oeilY1);
  
  bezier(oeilX1 - space, oeilY1, oeilTx1 - space, oeilTy1, oeilTx1, oeilTy1, oeilX2 + space, oeilY1);
  bezier(oeilX1 - space, oeilY1, oeilTx2, oeilTy2, oeilTx2, oeilTy2, oeilX2 + space, oeilY1);
  
  bezier(oeilX1 - space*2, oeilY1, oeilTx1 - space*2, oeilTy1, oeilTx1, oeilTy1, oeilX2 + space*2, oeilY1);
  bezier(oeilX1 - space*2, oeilY1, oeilTx2, oeilTy2, oeilTx2, oeilTy2, oeilX2 + space*2, oeilY1);
  
  stroke(255);
  strokeWeight(2);
 //fill(200);
  ellipse(x,y,(width-bordure*2)/3,(width-bordure*2)/3);
  ellipse(x,y,(width-bordure*2)/2.85,(width-bordure*2)/2.85);
  strokeWeight(1);
  ellipse(x,y,(width-bordure*2)/3.3,(width-bordure*2)/3.3);
  
  endShape();
   
  pupille1.display();
 
 //saveFrame();
}

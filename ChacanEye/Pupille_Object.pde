class pupille{
float px ;
float py ;
float pz ;
float r ;
float t ;

pupille(float px_,float py_, float pz_, float t_){
  py=px_;
  py=py_;
  pz=pz_;
  t=t_;
  r=0.01;
}
void display(){
  px+=r;
  py+=r;
  pz+=r;
translate(width/2, height/2, 0);
rotateX(px);
rotateY(py);
rotateZ(pz);
stroke(#FFE708);
strokeWeight(1);
noFill();
sphereDetail(10,4);
sphere(t);
rotateX(px);
rotateY(py*2);
rotateZ(pz);
box(t*2);
rotateX(px*2);
rotateY(py);
rotateZ(pz);
sphere(t*2.45);
}
}

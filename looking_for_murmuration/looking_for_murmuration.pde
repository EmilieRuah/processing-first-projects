bird[] birds= new bird[150];
 
void setup(){
 size(1080 , 1080);
 smooth(); 
  for (int i=0; i<birds.length ; i++){
    birds[i]= new bird();
  }
 }

void draw(){
  background(#C0D0D6);
  
  for (int i=0; i<birds.length ; i++){
  birds[i].display();
  birds[i].fly(); 
  }
  
  //saveFrame();
}

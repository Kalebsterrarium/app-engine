float errorX , errorY , errorWidth , errorHeight;
boolean errorstart = false, errorconditional1= false, errorconditional2= false;
color errorcolor;
int Flash=0, errorcounter=1;
 void Errorsetup() {
   errorcolor = color(Flash,0,0);
 errorX = displayWidth*0;
 errorY = errorX;
 errorWidth = displayWidth;
 errorHeight = displayHeight;
 }

void Error () {
  if ( errorcounter < 100) {
    errorconditional1 = false;
  }
  if ( errorcounter >= 100) {
    errorconditional1 = true;
  }
  
  if(errorconditional2 == true){
    Flash= 255;
  } else {
    Flash= 0;
  }
   if(errorconditional1 == true) {
    errorconditional2= true;
  } else {
  errorconditional2 = false;
} if (errorconditional1 == false) 

if (errorconditional1 == true) {
  errorcounter= errorcounter-100;
  println("decrease");
}
if (errorconditional1 == false) {
  errorcounter= errorcounter+1;
  println("increase");
}
  fill(errorcolor);
rect(errorX,errorY,errorWidth,errorHeight);
println(errorcounter);

}

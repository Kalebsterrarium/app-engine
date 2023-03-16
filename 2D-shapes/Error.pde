float errorX , errorY , errorWidth , errorHeight;
boolean errorstart = false, errorconditional1= false, errorconditional2= false;
color errorcolor;
int Flash=0, errorcounter=1, test=0;
 void Errorsetup() {
 errorX = displayWidth*0;
 errorY = errorX;
 errorWidth = displayWidth;
 errorHeight = displayHeight;
 }

void Error () {
if ( errorcounter >= 100) {
  if(errorconditional1 == true && errorcounter >= 100){
    errorconditional1 = false;
} else {
  errorconditional1 = true;
}
errorcounter = errorcounter - 100;

}

if ( errorcounter < 100) {
  errorcounter = errorcounter + 3;
}

if (errorconditional1 == true) {
  Flash = 255;
} else { 
  Flash = 0;
  

}
if (errorconditional1 == true) {
 test=1;
} else if (errorconditional1 == false) {
  test = 0;
}
 errorcolor = color(Flash,0,0);
 println(test);
  fill(errorcolor);
rect(errorX,errorY,errorWidth,errorHeight);
println(errorcounter);

}

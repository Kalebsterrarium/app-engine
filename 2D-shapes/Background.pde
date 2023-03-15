int Y_AXIS = 1;
int X_AXIS = 2;
int A=1, B=1, C=1,c11=0,c12=0,c13=0;
color b1, b2, c1, c2 ;
float interfaceX, interfaceY, interfaceWidth, interfaceHeight;
float menuX, menuY, menuWidth, menuHeight;
boolean conditional1,conditional2,conditional3;
float quitX, quitY, quitWidth, quitHeight;
color red=#FF0000, lightred=#FF6242, quitbuttoncolor=#FF0000;
//
void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
  else if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}
//





void BackGround () {
if(conditional1 == true){
    A= A - int(random(3));
  } else {
    A=A + int(random(5));
  }
  if(conditional2 == true ){
     B=B+ int(random(3));
  } else { 
    B= B - int(random(5));
  }
  if(conditional3 == true){
    C= C - int(random(3));
  } else {
  C=C + int(random(3));
}
  if(B>175) {
    conditional2= false;
  }
  if(A>175) {
    conditional1= true;
  }
  if(C>175) {
    conditional3= true;
  }
  if(B < 50) {
    conditional2= true;
  }
  if(A < 50) {
    conditional1= false;
  }
  if(C < 50) {
    conditional3= false;
  }
  colour();
  rect(interfaceX, interfaceY, interfaceWidth, interfaceHeight);
setGradient(0, 0, interfaceWidth, interfaceHeight, c1, c2, Y_AXIS);

}

//
void colour() {
  
    
    c1 = color(A,B,C);
  c2 = color(B,C,A);
  }

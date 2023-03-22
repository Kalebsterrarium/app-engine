int A=1;
boolean conditional1;
boolean colors=false;
void alternate() {
  
  if (colors == true) {
if(conditional1 == true){
    A= A - int(random(40));
  } else {
    A=A + 30;
  }
 
  
  if(A> -1000) {
    conditional1= true;
  }
 
 
  if(A < -5000) {
    conditional1= false;
  }
  println(A);
if(conditional1 == true) {
  println("decreasing");
} else {
  println("Increasing");
}
  }
}

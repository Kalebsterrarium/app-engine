//global variables
PFont font;
String work = "working";
//
void textsetup() {}//end textsetup
//
void pretextdraw () {
fill(#000000);
textAlign(CENTER,CENTER);
font = createFont("Calibri",20);
textFont(font,displayHeight);
}//end pretextdraw
//
void textdraw() {
pretextdraw();
textSize(40);
text(work,rectX, rectY, rectWidth, rectHeight);
fill(#FFFFFF);
println(wave);
println(X);
}// end textdraw
//
void textkeyPressed() {}//end textkeypressed
//
void textmousepressed() {}//end textmousepressed
//
//end code_for_text subprogram

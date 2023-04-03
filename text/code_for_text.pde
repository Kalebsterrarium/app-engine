//global variables
PFont font;

//
void textsetup() {}//end textsetup
//
void pretextdraw () {
fill(#000000);
textAlign(CENTER,CENTER);
font = createFont("Calibri.vlw",20);
textFont(font,displayHeight);
}//end pretextdraw
//
void textdraw() {
pretextdraw();
textSize(3);
text("working",rectX, rectY, rectWidth, rectHeight);

}// end textdraw
//
void textkeyPressed() {}//end textkeypressed
//
void textmousepressed() {}//end textmousepressed
//
//end code_for_text subprogram

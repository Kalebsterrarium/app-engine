//Global Varibles 
//
void setupMusic() {
  //
minim = new Minim (this); // Load from data directory, loadFile should also load from project folder, like loadImage
//
//Set the Directory or Pathway to the music
//Pathway:data / Music Files
//
//Reminder: finish OS_Level Code to auto read Pathway and files(See Operating System)
//
concatenationOfMusicFiles();
songs[] = minim.loadFile(path + musicFile);

}//End setupMusic
//
void drawMusic () {
}// end drawMusic
//
void keyPressedMusic() {
}// end keyPressedMusic
//
void mousePressedMusic() {
} //End mousePressedMusic
//
void concatenationOfMusicFiles() {
  path = "data/"
}//End concatenationOfMusicFiles
//
//End Music SubProgram

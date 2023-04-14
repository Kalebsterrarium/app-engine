import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables

Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[6]; //creates "Play List" variable holding extenstions WAV, AIFF, AU, SND, and MP3
//
//

//
void setup() {
 fullScreen();
  //
  setupOS_Level();
  //
 setupMusic();
 //
 songs[currentSong].loop(0);//Change the index manually
 //
}//end setup
//
void draw() {
  progressdraw();
 
   
print("Current Song Position:", songs[currentSong].position() );
 println("\tEnd of Song:", songs[currentSong].length() );
 println("\tSong number:",currentSong);
 drawMusic();
 
}//End Draw
//
void keyPressed() {
  keyPressedMusic();
}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program

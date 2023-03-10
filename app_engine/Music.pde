//Global Varibles 
//



String pathway, screech, Good, Drip;
int currentSong= 0;
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
songs[0] = minim.loadFile(pathway + screech);
songs[1] = minim.loadFile(pathway + Good);
songs[2] = minim.loadFile(pathway + Drip);
}//End setupMusic
//
void drawMusic () {
}// end drawMusic
//
void keyPressedMusic() {
   if ( key == 'm' || key == 'M' ) {//Mute Button, not PAUSE, only affect speakers
    if ( songs[currentSong].isMuted() ) {
      songs[currentSong].unmute();
    } else if ( songs[currentSong].position() >= songs[currentSong].length()*(1099/1100) ) {
      //Students to finish SMARTER Mute Button
      //ERROR: music player breaks if song finishes
      /* Ideas
       - rewind the song
       - play the next song automatically
       - play of notification to choose the next song
       */
      songs[currentSong].rewind(); //simple solution, contains ERROR
    } else {
      songs[currentSong].mute();
    }
  }//End Mute Button
  //
  //Forward & Reverse Skip
  if( key == 'f' || key == 'F') {
    
  songs[currentSong].skip(3000); //parameter in milliseconds
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*(1099/1100) ) {
  //skips forward to end of song 
    //ERROR; if at end of song, then next song
    //student to finish conditional 
    
  }
  

  
  if(key == 'r' || key == 'R') {
    //spamming r means start playing at beginning of song
  songs[currentSong].skip(-3000); //parameter in milliseconds
  } //end reverse
  
  //
  //single loop
  //if ( key == '1') 
   if ( key == '1') {
     delay( songs[currentSong].length() - songs[currentSong].position() );
     
     songs[currentSong].loop(0);
   }
  //
  //loop endless
  if ( key <= '9' && key != '1') {
     delay( songs[currentSong].length() - songs[currentSong].position() );
     
     songs[currentSong].loop(-1); //parameter is empty or -1
   }//end infinite loop
   //
   //stop
   if ( key == 's' || key == 'S') {
    if (songs[currentSong].isPlaying() ) {
    songs[currentSong].pause(); 
    songs[currentSong].rewind(); 
  } else {
    songs[currentSong].rewind();
  }
   }//end stop
   //
   //play-pause
   if ( key == 'p' || key == 'P') {
   
   if (songs[currentSong].isPlaying() ) {
     songs[currentSong].pause();
   } else if ( songs[currentSong].position() >= songs[currentSong].length()*(1099/1100) ) {
     //student to finish
     // .pause(), .rewind(), then cue the next song 
     exit();
   } else {
     songs[currentSong].play();//no auto rewind like loop()
   }
   
   }//end play-pause
   
   
   /*Note: possible smarter STOP buttons
   include soft "PAUSE" for first 15 seconds of STOP
   include auto prevoius & next track if STOP at beginning or end of File
   
   */
  
}// end keyPressedMusic
//
void mousePressedMusic() {
} //End mousePressedMusic
//
void concatenationOfMusicFiles() {
  pathway = "data/";
  screech= "Dinosaur_screech.mp3";
  Good = "Good_Ending_Theme_Five_Nights_at_Freddys_3.mp3";
  Drip = "WhatsApp_Car_Drip_Car.mp3";
}//End concatenationOfMusicFiles
//
//End Music SubProgram

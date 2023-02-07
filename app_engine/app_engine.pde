import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
String Path = new File("").getAbsolutePath(); //Exported
String directory = "\\FS-052\studuser$\Gr11\k.smith76\My Documents\GitHub\app-engine\app_engine\music"; //Not exported 
//
void setup() 
{
  File dir = new File(Path);//Null if not export
  File[] Filelist;
  if(dir == null) { 
    dir = new File(directory);
    Filelist = dir.listFiles();
    for (File file : FileList) {
      if (file.isFile() ) {
        if ( file.toString().endsWith(".mp3")) {
          songs = minim.loadFile( file.getName() );
        }
      }
    }
  } else {
    Filelist = dir.listFiles(); //Exported Folder
     for (File file : FileList) {
      if (file.isFile() ) {
        if ( file.toString().endsWith(".mp3")) {
          songs = minim.loadFile( file.getName() );
        }
      }
    }
  }//Catch when Null, not exported
 
}//end setup
//
void draw() {}//End Draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program

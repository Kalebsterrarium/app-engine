/* CAUTION, code not finished
Also see Music Subprogram
*/

//Global Variables
String Path = new File("").getAbsolutePath(); //Exported
String directory = "//FS-052/studuser$/Gr11/k.smith76/My Documents/GitHub/app-engine/app_engine"; //Not exported 
//
void setupOS_Level() {
 //
 
 //
  File anyDirectory = new File(Path);
  println("Exported Directory", anyDirectory);
  File githubDirectory = new File(directory); //Used when prototyping
  File[] FileListAnyDirectory = anyDirectory.listFiles();
  printArray(FileListAnyDirectory);
  println("Items in FileList;", FileListAnyDirectory.length);
  int i =0; //songs index
  for ( File file : FileListAnyDirectory) {
    if(file.isFile()) {
    if (file.toString().endsWith(".mp3") ) {
    println("Any Directory is working");
    songs[i] = minim.loadFile( file.getName() );
    i = i + 1;
    
        }
      }
    }
  
  File[] FileListGitHubDir = githubDirectory.listFiles();
  if ( songs[0] == null) {
    printArray(FileListGitHubDir);
    for ( File file : FileListGitHubDir) {
      if (file.isFile() ) {
        if ( file.toString().endsWith(".mp3") ) {
          println("File Name .mp3 only", file.getName());
          songs[i]  =minim.loadFile(file.getName());
          i+=1;
        }  
      }
    } 
  }
  
}//EndsetupOS_Level
//
//End OS_Level Subprogram

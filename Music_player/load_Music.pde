 void loadMusic() {
   //
  minim = new Minim(this);
  //
  //Concentration of Pathway + File Name
  String musicPathway = "../Music/"; // From Sketch to Music Folder
  String soundEffectPathway = "Sound Effects"; // From Sketch to Sound Effect Folder
  String ColonyFileName = "Colony - tubebackr  Royalty Free Music No Copyright Free Music Instrumental Free Download Music.mp3";
  String cubicFileName = "Cubic Z - Diamond Ortiz  Royalty Free Music - No Copyright Music  YouTube Music.mp3";
  String grooveFileName = "groove.mp3";
  String HeadFileName = "Head Candy - William Rosati  Royalty Free Music - No Copyright Music.mp3";
  String NightFileName ="Night Rider - JIGLR.mp3";
  String SummerFileName ="Summer - Bensound  Royalty Free Music - No Copyright Music.mp3";
  songs[0] = minim.loadFile(musicPathway + ColonyFileName);
  songs[1] = minim.loadFile(musicPathway + cubicFileName);
  songs[2] = minim.loadFile(musicPathway + grooveFileName);
  songs[3] = minim.loadFile( musicPathway + HeadFileName );
  songs[4] = minim.loadFile( musicPathway + NightFileName);
  songs[5] = minim.loadFile( musicPathway + SummerFileName);
  soundEffects[0] = minim.loadFile("../Sound Effects/Wood_Door_Open_and_Close_Series.mp3");
  soundEffects[1] = minim.loadFile("../Sound Effects/The_Simplest_Sting.mp3");  
  //
 } //End loadMusic

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
AudioPlayer song0 , song1 , song2 , song3, song4 , song5;
AudioPlayer soundEffect0 , soundEffect1; 
  //
  Boolean firstMouseclick=false;
  //
void setup() {
  size(300, 300);
  minim = new Minim(this);
  song0 = minim.loadFile("../Music/Colony - tubebackr  Royalty Free Music No Copyright Free Music Instrumental Free Download Musicgroove.mp3");
  song1 = minim.loadFile("../Music/Cubic Z - Diamond Ortiz  Royalty Free Music - No Copyright Music  YouTube Musicgroove.mp3");
  song2 = minim.loadFile("../Music/groovegroove.mp3");
  song3 = minim.loadFile("../Music/Head Candy - William Rosati  Royalty Free Music - No Copyright Musicgroove.mp3");
  song4 = minim.loadFile("../Music/Night Rider - JIGLRgroove.mp3");
  song5 = minim.loadFile("../Music/Summer - Bensound  Royalty Free Music - No Copyright Musicgroove.mp3");
  soundEffect0 = minim.loadFile("../Sound Effects/Wood_Door_Open_and_Close_Series.mp3");
  soundEffect1 = minim.loadFile("../Sound Effects/The_Simplest_Sting.mp3");
  //song.loop(0);
} //End setup
//
void draw() {
 background(0);
} //End draw
//
void keyPressed() {
  //
  if (key=='Q'|| key=='Q') exit();
  if (key==CODED && key==ESC ) exit();
  //
  soundEffect1.play();
} //End Keypress
//
void mousePressed() {
 soundEffect1.rewind ();
 if ( firstMouseclick==false ) firstMouseclick = true;
} // End Keypress
//End MAIN Program

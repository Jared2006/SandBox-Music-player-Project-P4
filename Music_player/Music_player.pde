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
  
  song.loop(0);
  soundEffect0.loop(0)
} //End setup
//
void draw() {
 background(0);
} //End draw
//
void keyPressed() {
  //
  if (key=='Q') song.loop(0);
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

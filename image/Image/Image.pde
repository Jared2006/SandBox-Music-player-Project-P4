/* Background Image Example
*/
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
Boolean nightMode = true;
//
size(1920, 1080); //Landscape
appWidth = width;
appHeight = height;
//
//Population
backgroundImageX = appWidth*0; 
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
pic = loadImage("cars-nissan-skyline-r34-gt-r-jdm-ztune-1920x1080-19139 (1).jpg");
//
//Rectangle Layout and Image drawing to CANVAS
rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
if ( nightMode==true ) tint(255,128);
if (nightMode==true) tint(64,64,40);
image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight); 
//
//End Main Program

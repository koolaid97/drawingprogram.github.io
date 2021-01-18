color ink, black=#050505, red=#FA0307, white=#FFFFFF, blue=#022D98, green=#05FF24, pink=#FA3DF1, purple=#720B98, yellow=#F2E700, reset;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter;
PImage pic1, pic2;
float picX1, picY1, picImageWidthRatio1, picImageHeightRatio1, picWidth1, picHeight1, picX2, picY2, picImageWidthRatio2, picImageHeightRatio2, picWidth2, picHeight2, e, e1, e2, e3, p1, p2, p3, p4, r1, r2, r3, r4, p11, p22, p33, p44;
float inkredx, inkredy, inkredxx, inkredyy, inkbluex, inkbluey, inkbluexx, inkblueyy, inkgreenx, inkgreeny, inkgreenxx, inkgreenyy, inktx, inkty, inktxx, inktyy, inkblackx, inkblacky, inkblackxx, inkblackyy, inkpinkx, inkpinky, inkpinkxx, inkpinkyy, inkpurplex, inkpurpley, inkpurplexx, inkpurpleyy, x, y, xx, i1, i11, i111, i1111;
Boolean draw=false, drawc=false;
Boolean redink=false, blackink=false, greenink=false, blueink=false, thickink=false, lblueink= false, pinkink = false, purpleink=false, pic1on= false, eon=false, pon=false;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// global var
Minim minim;
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int loopIntNum = 1;
int currentSong = numberOfSongs - numberOfSongs;

void setup() {
  fullScreen();
  minim = new Minim(this);
  song[currentSong] = minim.loadFile("../../music/Muriel - Bobby Richards.mp3");
  song[currentSong+=1] = minim.loadFile("../../music/Phrase Prant - josh pan.mp3");
  song[currentSong+=1] = minim.loadFile("../../music/Tak - Bobby Richards.mp3");
  //
  currentSong = numberOfSongs - numberOfSongs;
  for (int i = currentSong; i<numberOfSongs; i++) {
    songMetaData[i] = song[i].getMetaData();
  }
{
  println("Start of Console");
  println("Click the Console to Finish Starting the Program");
  println("Press keyboard to test: p, etc");
  //

  for ( int i=currentSong; i<numberOfSongs; i++) {
    println("File Name: ", songMetaData[i].fileName() );
    println("Song Length (in milliseconds); ", songMetaData[i].length() );
    println("Song Length (in seconds): ", songMetaData[i].length()/1000 );
    println("Song Length (in mintues and seconds): ", songMetaData[i].length()/1000/60, "minutes", (songMetaData[i].length()/1000)-(songMetaData[i].length()/1000/60 *60), "seconds" );
    println("Song Title: ", songMetaData[i].title() );
    println("Author: ", songMetaData[i].author() );
    println("Composer: ", songMetaData[i].composer() );
    println("Orchestra: ", songMetaData[i].orchestra() );
    println("Albums: ", songMetaData[i].album() );
    println("Disk: ", songMetaData[i].disc() );
    println("Publisher: ", songMetaData[i].publisher() );
    println("Date Release: ", songMetaData[i].date() );
    println("Copyright: ", songMetaData[i].copyright() );
    println("Comments: ", songMetaData[i].comment() );
    println("Lyrics: ", songMetaData[i].lyrics() );
    println("Track: ", songMetaData[i].track() );
    println("Genre: ", songMetaData[i].genre() );
    println("Encoded: ", songMetaData[i].encoded() );
  }
pic2 = loadImage("free-spongebob-characters-coloring-pages-download-clip-art-printable-excelent-pdf-picture-inspirations.jpg");
pic1 = loadImage("super_mario_lineart_by_mmalzin_d5zp4n0-fullview.jpg");
drawingSurfaceX = width*1/4;
drawingSurfaceY = height*1/5;
drawingSurfaceWidth = width*3/4;
drawingSurfaceHeight = height*4/5;
//
inkredx = width*50/64;
inkredy = height*1/30;
inkredxx= 30;
inkredyy = 30;
//
r1= width*1/2;
r2=height*1/30;
r3= width*1/8;
r4 = height*1/10;
//

inkgreenx = width*52/64;
inkgreeny = height*1/30;
inkgreenxx= 30;
inkgreenyy = 30;
//
inkbluex = width*50/64;
inkbluey = height*3/30;
inkbluexx= 30;
inkblueyy = 30;
//
inkpinkx = width*52/64;
inkpinky = height*3/30;
inkpinkxx= 30;
inkpinkyy = 30;
//
inkblackx = width*54/64;
inkblacky = height*3/30;
inkblackxx= 30;
inkblackyy = 30;
//
inkpurplex = width*54/64;
inkpurpley = height*1/30;
inkpurplexx= 30;
inkpurpleyy = 30;
//
inktx = width*28/64;
inkty = height*1/30;
inktxx= 30;
inktyy = 30;
//
x = width *2/30;
y = height*1/3;
xx= width* 1/30;
//
i1 = width *2/30;
i11 = height*4/5;
i111= width* 1/30;
i1111 =height* 1/30;
//
e = width *13/30;
e1 = height*3/30;
e2= width* 1/30;
e3 =height* 1/30;
//
p1 = width *10/30;
p2 = height*3/30;
p3= width* 1/30;
p4 =height* 1/30;
//
p11 = width *2/30;
p22 = height*4.5/5;
p33= width* 1/30;
p44 =height* 1/30;

rect(p11, p22, p33, p44);
rect(p1, p2, p3, p4);
rect(e, e1, e2, e3);
rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
fill(red);
rect(r1, r2, r3, r4);
rect(inkredx, inkredy, inkredxx, inkredyy);
fill(green);
rect(inkgreenx, inkgreeny, inkgreenxx, inkgreenyy);
fill(blue);
rect(inkbluex, inkbluey, inkbluexx, inkblueyy);
fill(white);
rect(inktx, inkty, inktxx, inktyy);
fill(black);
rect(inkblackx, inkblacky, inkblackxx, inkblackyy);
fill(pink);
rect(inkpinkx, inkpinky, inkpinkxx, inkpinkyy);
fill(purple);
rect(inkpurplex, inkpurpley, inkpurplexx, inkpurpleyy);
rect(i1, i11, i111, i1111);
ellipse(x, y, xx, xx);
picImageWidthRatio1 = 700.0/700.0; //Image width is longer, thus 1
picImageHeightRatio1 = 450.0/700.0; //Image height is shorter, thus <1
picX1 = drawingSurfaceX;
picY1 = drawingSurfaceY;
picWidth1 = drawingSurfaceWidth * picImageWidthRatio1; //remains longer side, "*1"
picHeight1 = picWidth1 * picImageHeightRatio1; //becomes shorter side, "*<1"
if (picHeight1 >drawingSurfaceHeight) println("Image #1 display issues"); //dimension might be 'cut-off'
//
picImageWidthRatio2 = 700.0/700.0; //Image width is longer, thus 1
picImageHeightRatio2 = 450.0/700.0; //Image height is shorter, thus <1
picX2 = drawingSurfaceX;
picY2 = drawingSurfaceY;
picWidth2 = drawingSurfaceWidth * picImageWidthRatio2; //remains longer side, "*1"
picHeight2 = picWidth2 * picImageHeightRatio2; //becomes shorter side, "*<1"
if (picHeight2 >drawingSurfaceHeight) println("Image #1 display issues"); //dimension might be 'cut-off'
if (pic1on == true)
{
  image(pic1, picX1, picY1, picWidth1, picHeight1);
}
}

}

void draw() {
  println(ink);
  if (redink == true) {
    ink = red;
  }
  if (blackink == true) {
    ink = black;
  }
  if (greenink == true) {
    ink = green;
  }
  if (blueink == true) {
    ink = blue;
  }
  if (thickink == true) {
    strokeWeight(45);
    ;
  }
  if (blueink == true) {
    ink = blue;
  }
  if (purpleink == true) {
    ink = purple;
  }
  if (pinkink == true) {
    ink = pink;
  }
  if (draw == true  && mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    stroke(ink);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  if (drawc== true  && mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    fill(ink);
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  }
  if (pon == true) {
    ink = yellow;
  }
  if (eon == true) {
    ink =white;
  }

  //
}
void keyPressed() {
  if ( key == 'p' || key == 'P' ) {//Play-Pause Button
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {//.legnth() = end
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }//End of Play-Pause Button
  //
  if (key == 's' || key == 'S') {//Stop Button
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {//.legnth() = end
      song[currentSong].rewind();
    } else { //Song is not playing
      song[currentSong].rewind();
    }
  }// End Stop Button
  //
  if ( key == 'f' || key == 'F') song[currentSong].skip(1000); // skip forward 1 second (1000 milliseconds)
  if ( key == 'r' || key == 'R') song[currentSong].skip(-1000); // skip backward 1 second (1000 milliseconds)
  //
  if ( key == 'l' || key =='L' ) song[currentSong].loop(loopIntNum); //Loop Button
  //
  if ( key == 'n' || key == 'N') {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if (currentSong == numberOfSongs -1) {
        currentSong= numberOfSongs- numberOfSongs;
      } else {
        currentSong++;
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if (currentSong == numberOfSongs -1) {
        currentSong= numberOfSongs- numberOfSongs;
      } else { 
        currentSong++;
      }
    }
    ;
  }
}
{
  if ( key == 'b' || key == 'B') {    
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if (currentSong == numberOfSongs- numberOfSongs) {
        currentSong = numberOfSongs -1;
      } else {
        currentSong--;
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if (currentSong == numberOfSongs -1) {
        currentSong= numberOfSongs- numberOfSongs;
      } else { 
        currentSong++;
      }
    }
    currentSong--;
  }
}
void mousePressed() {

  fill(white);
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {

    println("drawing surface");
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  }
  if ( mouseX>x && mouseX<x+xx  && mouseY>y && mouseY<y+xx) {

    println("drawing surface");
    if (drawc == false) {
      drawc = true;
    } else {
      drawc = false;
    }
  }


  if ( mouseX>inkredx  && mouseX<inkredx+inkredxx  && mouseY>inkredy && mouseY<inkredy+inkredyy) {
    println("red");
    redink=true;
    blackink=false;
    greenink=false;
    blueink=false;
    pinkink=false;
    purpleink=false;
    pon=false;
    eon=false;
  }
  if ( mouseX>inkgreenx  && mouseX<inkgreenx+inkgreenxx  && mouseY>inkgreeny && mouseY<inkgreeny+inkgreenyy) {
    println("green");
    redink=false;
    blackink=false;
    greenink=true;
    blueink=false;
    pinkink=false;
    purpleink=false;
    pon=false;
    eon=false;
  }
  if ( mouseX>inkbluex  && mouseX<inkbluex+inkbluexx  && mouseY>inkbluey && mouseY<inkbluey+inkblueyy) {
    println("blue");
    redink=false;
    blackink=false;
    greenink=false;
    blueink=true;
    pinkink=false;
    purpleink=false;
    pon=false;
    eon=false;
  }
  if ( mouseX>inktx  && mouseX<inktx+inktxx  && mouseY>inkty && mouseY<inkty+inktyy) {
    thickink=true;
  }
  if ( mouseX>inkpinkx  && mouseX<inkpinkx+inkpinkxx  && mouseY>inkpinky && mouseY<inkpinky+inkpinkyy) {
    println("blue");
    redink=false;
    blackink=false;
    greenink=false;
    blueink=false;
    pinkink=true;
    purpleink=false;
    pon=false;
    eon=false;
  }
  if ( mouseX>inkpurplex  && mouseX<inkpurplex+inkpurplexx  && mouseY>inkpurpley && mouseY<inkpurpley+inkpurpleyy) {
    println("blue");
    redink=false;
    blackink=false;
    greenink=false;
    blueink=false;
    pinkink=false;
    purpleink=true;
    pon=false;
    eon=false;
  }
  if ( mouseX>inkblackx  && mouseX<inkblackx+inkblackxx  && mouseY>inkblacky && mouseY<inkblacky+inkblackyy) {
    println("blue");
    redink=false;
    blackink=true;
    greenink=false;
    blueink=false;
    pinkink=false;
    purpleink=false;
    pon=false;
    eon=false;
  }
  if ( mouseX>i1  && mouseX<i1+i111  && mouseY>i11 && mouseY<i11+i1111) {
    pic1on=true;
    image(pic1, picX1, picY1, picWidth1, picHeight1);
  }
  if ( mouseX>e  && mouseX<e+e2  && mouseY>e1 && mouseY<e1+e3) {
    println("blue");
    redink=false;
    blackink=false;
    greenink=false;
    blueink=false;
    pinkink=false;
    purpleink=false;
    pon=false;
    eon=true;
  }
  if ( mouseX>p1  && mouseX<p1+p3  && mouseY>p2 && mouseY<p2+p4) {
    println("blue");
    redink=false;
    blackink=false;
    greenink=false;
    blueink=false;
    pinkink=false;
    purpleink=false;
    pon=true;
    eon=false;
  }
  if ( mouseX>r1  && mouseX<r1+r3  && mouseY>r2 && mouseY<r2+r4) {
    fill(white);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  }
  if ( mouseX>p11  && mouseX<p11+p33  && mouseY>p22 && mouseY<p22+p44) {
    image(pic2, picX2, picY2, picWidth2, picHeight2);
  }
}

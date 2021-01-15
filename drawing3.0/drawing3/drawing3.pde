color ink, black=#050505, red=#FA0307, white=#FFFFFF, blue=#022D98, green=#05FF24, pink=#FA3DF1, purple=#720B98, yellow=#F2E700;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter;
PImage pic1;
float picX1, picY1, picImageWidthRatio1, picImageHeightRatio1, picWidth1, picHeight1, e, e1, e2, e3, p1, p2, p3, p4;
float inkredx, inkredy, inkredxx, inkredyy, inkbluex, inkbluey, inkbluexx, inkblueyy, inkgreenx, inkgreeny, inkgreenxx, inkgreenyy, inktx, inkty, inktxx, inktyy, inkblackx, inkblacky, inkblackxx, inkblackyy, inkpinkx, inkpinky, inkpinkxx, inkpinkyy, inkpurplex, inkpurpley, inkpurplexx, inkpurpleyy, x, y, xx, i1, i11, i111, i1111;
Boolean draw=false, drawc=false;
Boolean redink=false, blackink=false, greenink=false, blueink=false, thickink=false, lblueink= false, pinkink = false, purpleink=false, pic1on= false, eon=false, pon=false;
void setup() {
  fullScreen();

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
  rect(p1, p2, p3, p4);
  rect(e, e1, e2, e3);
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  fill(red);
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
  if (pic1on == true)
  {
    image(pic1, picX1, picY1, picWidth1, picHeight1);
  }
}
{
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
}

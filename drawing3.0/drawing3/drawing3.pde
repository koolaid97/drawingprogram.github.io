color ink, black=#050505, red=#FA0307, white=#FFFFFF;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float inkredx, inkredy, inkredxx, inkredyy;
Boolean draw=false;
Boolean redink=false, blackink=false;
void setup() {
  //fullScreen();
  size(600, 500);

  drawingSurfaceX = width*1/4;
  drawingSurfaceY = height*1/5;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;
  //
  inkredx = width*50/64;
  inkredy = height*2/30;
  inkredxx= 30;
  inkredyy = 30;

  //

  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
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
  if (draw == true  && mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    fill(ink);

    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  fill(red);
  rect(inkredx, inkredy, inkredxx, inkredyy);
  fill(white);









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


  if ( mouseX>inkredx  && mouseX<inkredx+inkredxx  && mouseY>inkredy && mouseY<inkredy+inkredyy) {
    println("red");
    redink=true;
    blackink=false;
  }
}

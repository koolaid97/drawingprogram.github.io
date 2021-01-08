
color ink, black=#000000;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter;
float cbox2X1, cbox2Y1, cbox2X2, cbox2Y2, cbox1X1, cbox1X2, cbox1Y1, cbox1Y2;
Boolean draw=false;
boolean blueink= false, blackink= false;

void setup() {
  //fullScreen();
  size(600,500);
  quitButtonSetup();
  drawingSurfaceX = width*1/4;
  drawingSurfaceY = height*1/5;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;
  //

  drawingDiameter = width*1/100;
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
  cbox1X1 = width*49/64;
  cbox1Y1 = height*2/30;
  cbox1X2 = width*2/64;
  cbox1Y2 = height*1/30;
  //
  cbox2X1 =  width*52/64;
  cbox2Y1 = height*1/18;
  cbox2X2 = width*2/64;
  cbox2Y2 = height*1/30;
}

void draw() {
  quitButtonDraw();
  if (blueink == true) {
    ink = blue;
  }
  if (blackink == true) {
    ink = black;
  }

  if (draw == true && mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight  ) {
    fill(ink);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }

  fill(black);
  rect(cbox1X1, cbox1X2, cbox1Y1, cbox1Y2);
  //

  fill(blue);
  rect(cbox2X1, cbox2Y1, cbox2X2, cbox2Y2);
  
    if ( mouseX>cbox2X1  && mouseX<cbox2X1+cbox2X2  && mouseY>cbox2Y1 && mouseY<cbox2Y1+cbox2Y2) {
    fill(black);
    rect(cbox2X1, cbox2Y1, cbox2X2, cbox2Y2);
  } else {
    fill(blue);
    rect(cbox2X1, cbox2Y1, cbox2X2, cbox2Y2);
  }

  //
}

void mousePressed() {
  quitButtonMouseClicked();
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  }
  if ( mouseX>cbox1X1  && mouseX<cbox1X1+cbox1X2  && mouseY>cbox1Y1 && mouseY<cbox1Y1+cbox1Y2) {
    blueink=false;
    blackink=true;
  }

  //
  if ( mouseX>cbox2X1  && mouseX<cbox2X1+cbox2X2  && mouseY>cbox2Y1 && mouseY<cbox2Y1+cbox2Y2) {
    blueink=true;
    blackink=false;
  }
}

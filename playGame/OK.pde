boolean active = false;
int okXcor = 545;
int okYcor = height + 350;
final color activeButton = color(#03C6FF);
final color inactiveButton = color(#C5ECF7);


void initOkButton() {
  pushStyle();
  fill(inactiveButton);
  stroke(activeButton);
  if (active)
    strokeWeight(2);
  else noStroke();
  rect(okXcor, okYcor, optionsWidth, optionsHeight, 7);
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(10);
  text("OK", okXcor + (optionsWidth / 2), okYcor + (optionsHeight/2));
}

boolean overOK()  {
  //if the mouse has clicked instructions button
  if (mouseX >= okXcor  && mouseX <= okXcor + instructionWidth && 
      mouseY >= okYcor && mouseY <= okYcor + instructionHeight) {
      //screen = 5 moves to instructions page
        ok();
    return true;
  } else {
    return false;
  }
}
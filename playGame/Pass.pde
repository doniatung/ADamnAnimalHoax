int PassWidth = 70;
int PassHeight = 40;
int PassX = 625 - optionsWidth - 10;
int PassY = height + 400;

void initPass(){
  pushStyle();
  fill(0);
  rect(PassX, PassY, PassWidth, PassHeight, 7);
  textAlign(CENTER,CENTER);
  fill(255);
  textSize(10);
  text("Pass", PassX + (PassWidth / 2), PassY + (PassHeight/2));
}

boolean overPass(){
  //if user has clicked options page
  if (mouseX >= PassX  && mouseX <= PassX + PassWidth && 
      mouseY >= PassY && mouseY <= PassY + PassHeight) {
    return true;
  } 
  else {
    return false;
  }
}

void pass(){
  switchPlayers();
}
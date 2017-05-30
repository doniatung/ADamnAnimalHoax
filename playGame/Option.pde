int optionsWidth = 70;
int optionsHeight = 40;
int optionsX = 625 - optionsWidth - 10;
int optionsY = height - optionsHeight + 40;


boolean overOptions()  {
  //if user has clicked options page
  if (mouseX >= optionsX  && mouseX <= optionsX + optionsWidth && 
      mouseY >= optionsY && mouseY <= optionsY + optionsHeight) {
        //screen 6 opens options page
    screen = 6;
    return true;
  } else {
    return false;
  }
}

//sets up options page
void optionsPage(){
  background(255);
  textSize(20);
  textAlign(CENTER);
  text("Settings", width/2 -10 , 30); 
  fill(#401F1F);
  textSize(15);
  }
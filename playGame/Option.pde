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

void initOptions(){
  fill(0);
  rect(optionsX, optionsY, optionsWidth, optionsHeight, 7);
  textAlign(CENTER,CENTER);
  fill(255);
  textSize(10);
  text("Options", optionsX + (optionsWidth / 2), optionsY + (optionsHeight/2));
}

//sets up options page
void optionsPage(){
  background(255);
  textSize(20);
  textAlign(CENTER);
  fill(#401F1F);
  text("Settings", width/2 -10 , 30); 
  textSize(15);
  
  
  
  textSize(20);
  textAlign(CENTER);
  text("Select a Background Color", width/2 -10, 100);
  //fill(#401F1F);
  
  fill(223, 255, 223);
  rect(width/2 -45, 135, 90, 50, 7);
  fill(255, 200, 255);
  rect(width/2 + 65, 135, 90, 50, 7);
  fill(230, 230, 255);
  rect(width/2 -155, 135, 90, 50, 7);
  fill(255,255,255);
  rect(width/2 -265, 135, 90, 50, 7);
  fill(255, 213, 213);
  rect(width/2 + 175, 135, 90, 50, 7);
  }
boolean active = false;
okXcor = 635-60;
okYCor = height - 70;
final color activeButton = ( );
final color inactiveButton = ( );


void draw(){
  fill(#00BFF7);
  rect(optionsX, optionsY, optionsWidth, optionsHeight, 7);
  textAlign(CENTER,CENTER);
  fill(255);
  textSize(10);
  text("Options", optionsX + (optionsWidth / 2), optionsY + (optionsHeight/2));
}
/*
x, y: Coordinates of rectangle center
w, h: Width and height
r: Corner radius
mode: Mouse hover tactility mode
c: Highlight color
d: Pop out distance
*/
boolean button(float x,float y, float w,float h, float r, String mode, color c, float d) {
  rectMode(CENTER);
  rect(x,y, w,h, r);  // Box
  if(mouseX >= x-w/2 && mouseX <= x+w/2 && mouseY >= y-h/2 && mouseY <= y+h/2) {  // Mouse within box boundaries
    switch(mode) {  // Hover mode
      case "highlight":  // Highlights button
      case "Highlight":
        highlight(x,y, w,h, r, c);
        break;
      case "pop":  // Pops out button
      case "Pop": 
        buttonPop(x,y, w,h, r, d);
        break;
      case "stroke":
      case "Stroke":
        hStroke(x,y, w,h, r, c);
        break;
      case "HP":  // Highlight + Pop 
      case "hp":
        highlight(x,y, w,h, r, c);
        buttonPop(x,y, w,h, r, d);
        break;
    }
    if(mouseClick) {  // If button is clicked
      mouseClick = false;  // Reset mouse click
      return true;
    }
  } 
  return false;
}

void highlight(float x,float y, float w,float h, float r, color c) {
  fill(c);
  rect(x,y, w,h, r);  // Box
}

void buttonPop(float x,float y, float w,float h, float r, float d) {
  w += d/2;
  h += d/2;
  rect(x,y, w,h, r);  // Box
}

void hStroke(float x,float y, float w,float h, float r, color c) {
  stroke(c);
  rect(x,y, w,h, r);  // Box
}

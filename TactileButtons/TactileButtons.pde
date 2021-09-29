

color bg = #6FFABF;



void setup() {
  size(1000,700);

}


void draw() {
  background(bg);
  stroke(0);
  strokeWeight(5);
  
  
  fill(255);
  if(button(width/2,height/4, 200,100, 5, "pop", 0, 40)) bg = 255;  // White button
    
  fill(#FA6F7F);
  if(button(width/2,height/2, 200,100, 5, "highlight", #AA4C57, 0)) bg = #FA6F7F;  // Red button
  
  fill(#6F72FA);
  if(button(width/2,height*0.75, 200,100, 5, "both", #4C4EAA, 40)) bg = #6F72FA;  // Blue button
}

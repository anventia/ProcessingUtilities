void polygon(float x,float y, float r, int n) {
  beginShape(); for(float i = 0, a=TWO_PI/n; i <= n; i++) {vertex(x+r*cos(a*i), y+r*sin(a*i));} endShape();
}

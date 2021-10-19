class AnimatedGif {
 
  // Instance Variables //
  PImage gif[];
  int currentFrame, totalFrames;
  float x,y, w,h;
  
  
  // Constructor //  
  AnimatedGif(float x, float y, float w, float h, String file, String ext, int totalFrames, int startFrame) {
    gif = new PImage[totalFrames+1];
    currentFrame = startFrame;
    this.totalFrames = totalFrames;
    this.x = x; this.y = y;
    this.w = w; this.h = h;
    for(int i = 0; i < totalFrames+1; i++) {
      gif[i] = loadImage(file+i+ext);
    }
  }
  
  
  // Actions //
  void play() { if(currentFrame == totalFrames) currentFrame = 0; else currentFrame++; }  // Play gif
  void show() { image(gif[currentFrame], x,y, w,h); }  // Show gif
  void setFrame(int frame) { currentFrame = frame; }  // Sets frame to value.
  
}

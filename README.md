# ProcessingUtilities
Useful functions for making Processing projects.

<br/>

`button(x,y, w,h, r, mode, c, d);`
  -
Makes a tactile button that returns `true` if clicked.
```processing
if(button(...)) {  // draws button and detects when clicked
  // do stuff when clicked
}
```
- `x, y`: Coordinates of rectangle center
- `w, h`: Width and height
- `r`: Corner radius
- `mode`: Mouse hover tactility mode:
  - "Highlight": Highlights the button in a different color
  - "Pop": Makes the button 'pop out'
  - "Stroke": Highlights the stroke in a different color
- `c`: Highlight color
- `d`: Pop out distance

<br/>

`scaleX, scaleY`
 -
Allows UI elements to scale with window size.
```processing
// Example: 300x400 rect in default window size will scale to the equivalent ratio in a different window size. //
rect(width/2,height/2, 300*scaleX, 400*scaleY);  
```
- Multiply any value you want to scale with window `width` or `height` with `scaleX` or scaleY`
- Useful for `fullScreen()` projects
- Change `1000` and `700` in the code to whatever your default window resolution is: what you coded everything in originally

<br/>

`polygon(x,y, radius, sides);`
 -
 Creates a regular polygon with any number of sides.
 ```processing
 // Hexagon with a radius of 100px
 polygon(0,0, 100, 6);
 ```
 - `x, y`: Coordinates of polygon center.
 - `radius`: Distance from center to each point.
 - `sides`: Number of sides the polygon will have.

<br/>

`new AnimatedGif(x,y, w,h, file,ext, totalFrames,startFrame)`
 -
 Loads and runs animated GIFs.
```processing 
AnimatedGif myGif;

void setup() {
  // Animated GIF at 0,0, size 400x300, file formatting "frame-n,png", 200 frames, start on frame 0
  myGif = new AnimatedGif(0,0, 400,300, "frame-",".png", 200,0)
}

void draw() {
  myGif.show();  // Shows the GIF
  myGif.play();  // Plays the GIF
  
  if(...) myGif.setFrame(10); // Sets frame to 10 
}
```
- `x,y`: Coordinates of the GIF. (relative offset set by `imageMode()`)
- `w,h`: Width and height of the GIF.
- `file`: First part of filename before frame number `n`, ex. "frame-1.png" -> `file = "frame-1"`
- `ext`: Second part of filename after frame number `n`, ex. "frame-1.png" -> `ext = ".png"`
- `totalFrames`: Number of the last frame.
- `startFrame`: Frame number to start the animation at.

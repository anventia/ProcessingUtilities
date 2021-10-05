# ProcessingUtilities
Useful Processing fuctions

`button(x,y, w,h, r, mode, c, d);`
  -
Makes a tactile button that returns `true` if clicked.
```
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
  - "Stroke" Highlights the stroke in a different color
- `c`: Highlight color
- `d`: Pop out distance

<br/>

`scaleX, scaleY`
- 
Allows UI elements to scale with window size.
```
rect(width/2,height/2, 300*scaleX, 300*scaleY);  // Example
```
- Multiply any value you want to scale with window `width` or `height` with `scaleX` or scaleY`.
- Usefull for `fullScreen()` projects
- Change 1000x700 in the code to whatever your default window resolution is: what you coded everything in originally

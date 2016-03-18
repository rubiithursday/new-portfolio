import quickhull3d.*;
import ComputationalGeometry.*;
//public, accessible everywher
IsoContour iso; 
//isocontour: heat maps, weather map, 

void setup () {
  size (700, 700, P3D); 
  PVector start = new PVector (0, 0); 
  PVector end = new PVector (width, height); 
  iso = new IsoContour(this, start, end, 30, 30);
}


void draw () {
  background(255,255,255);
  iso. plotGrid(); 
 stroke (14,9,77); 
 noFill();
  if(mousePressed){
    iso.addPoint(new PVector(mouseX, mouseY), 10); 
}
    fill (204, 9, 12); 
  iso. plot(.2);
      fill (95, 255, 254); 
  iso. plot(.5);
      fill (255, 255, 108); 
  iso. plot(1);
  
}


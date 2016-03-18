import quickhull3d.*;
import ComputationalGeometry.*;

IsoSurface iso; 
PVector [] points; 

void setup () {


  size (400, 400, P3D); 
  PVector start = new PVector(-200, -100, -100); 
  PVector end = new PVector (100, 100, 100); 
  iso = new IsoSurface (this, start, end, 5); 
  points = new PVector [30]; 
  for (int i =0; i<points.length; i++) {

    points[i] = new PVector ( random (-100, 100), random (-100, 100), random (-100, 100));
  }
} 




void draw () { 
  lights(); 
  background (255,255,255); 
  camera(200, 200, 200, 0, 0, 0, 0, 0, -1); 
  fill (24, 0, 255);
  iso.plot (mouseX/10000.0 ); 
  fill (255, 255, 0); 
  iso.plot (mouseX/20000.0 ); 

  for (int i =0; i<points.length; i++) {
    PVector pt = points [i]; 
    float j = 4; 
    pt.add(new PVector( random (-j, j), random (-j, j), random (-j, j))); 
    point ( pt.x, pt.y, pt.z);
  }

  iso.clear(); 
  for (int i =0; i<points.length; i++) {
    iso.addPoint(points [i], 10 );

    strokeWeight(1);
  }
}


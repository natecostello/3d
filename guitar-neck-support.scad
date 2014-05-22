$fn=128;

base_height=5;

translate([-5, -5, 0])
cube([90, 50, base_height]);

translate([0, 0, base_height])
difference() {
  cube([80, 40, 40]);

  translate([0, 0, 22])
  rotate(a=[90,0,0])
  linear_extrude(h=40, center=true, convexity=10, twist=0)
  polygon(points=[[40,0], [80,20], [0,20]], paths=[[0,1,2]]);
}

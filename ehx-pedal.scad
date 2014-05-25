$fn=128;


rotate([-5, 0, 0])
union() {
  translate([0, 0, 2])
  difference() {
    difference() {
      cylinder(h=5, r=7);
      cylinder(h=5, r=5.5);
    }
  }

  cylinder(h=2, r=7);

  rotate([5, 0, 0])
  translate([0, 0, -2])
  cylinder(h=3, r=30);
}

// Use these blocks to lay around corners of large pieces to help prevent curling

$fn=180;

arm_length = 30;
corner_radius = 6;
thickness = 2;

difference() {
    hull() {
        cylinder(r=corner_radius, h=thickness);
        
        translate([0, arm_length, 0])
        cylinder(r=corner_radius, h=thickness);
        
        translate([arm_length, 0, 0])
        cylinder(r=corner_radius, h=thickness);
    }
    
    translate([corner_radius, corner_radius, 0]) {
        hull() {
            cylinder(r=corner_radius/2, h=thickness);
            
            translate([0, arm_length, 0])
            cylinder(r=corner_radius/2, h=thickness);
            
            translate([arm_length, 0, 0])
            cylinder(r=corner_radius/2, h=thickness);
        }
    }
}
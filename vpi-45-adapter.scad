// This is an adapter for a VPI record cleaner. The adapter is
// used to hold 45s. Normally this thing costs $30. Print one instead!

// This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
// http://creativecommons.org/licenses/by-nc-sa/4.0/deed.en_US


$fn=100;

module unit() {
    cylinder(r1=45, r2=40, h=10); // Main body


    difference() {
        translate([0, 0, 10])
        cylinder(r1=25, r2=30, h=10); // Handle part

        translate([0, 0, 17])
        cylinder(r=13, h=13); // Cut out for vpi screw down
    }
}


difference() {
    unit();

    cylinder(r1=40, r2=35, h=4); // Underside cut out
    
    cylinder(r=3.75, h=30); // screw hole
}

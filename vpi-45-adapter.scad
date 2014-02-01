// This is an adapter for a VPI record cleaner. The adapter is
// used to hold 45s. Normally this thing costs $30. Print one instead!

// This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
// http://creativecommons.org/licenses/by-nc-sa/4.0/deed.en_US


$fn=180;

module body() {
    difference() {
        cylinder(r1=40, r2=45, h=7); // Main body
        cylinder(r1=35, r2=40, h=5); // Underside cut out

        translate([0, 0, 6])
        cylinder(r1=13, r2=14, h=1);
    }
}

difference() {
    body();
    cylinder(r=3.75, h=7); // screw hole
}
// This is an adapter for a VPI record cleaner. The adapter is
// used to hold 45s. Normally this thing costs $30. Print one instead!

// This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
// http://creativecommons.org/licenses/by-nc-sa/4.0/deed.en_US


$fn=100;

module body() {
    difference() {
        cylinder(r1=45, r2=40, h=7); // Main body
        cylinder(r1=40, r2=35, h=5); // Underside cut out
    }
}

module adapter() {
    cylinder(r=19, h=1);
    cylinder(r=4.75, h=7);
}

difference() {
    union() {
        body();
        adapter();
    }

    cylinder(r=3.75, h=30); // screw hole
}
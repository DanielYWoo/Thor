$fn=90;
difference() {
import("Art3Union.stl");

translate([28.5,73.5,0]) color("#ff00bb") cylinder(h=100,r=1.6);
translate([28.5,73.5+12.9,0]) color("#ff00bb") cylinder(h=100,r=1.6);
translate([28.5-57,73.5,0]) color("#ff00bb") cylinder(h=100,r=1.6);
translate([28.5-57,73.5+12.9,0]) color("#ff00bb") cylinder(h=100,r=1.6);
}
$fn=120;
// OpenSCAD is buggy, need to export and upload to this tool to fix it
//https://www.formware.co/onlinestlrepair

difference() {
import("./Art56SmallGear.stl", $fn=120);

translate([0,0,5.4]) cylinder(r=10.04,h=20);
}

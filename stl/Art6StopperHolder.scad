$fn=30;
width1=12;
width2=7;
height=15;

difference() {
translate([0,0,0]) cube([height, width1, 2]);
translate([2, width1/2-width2/2,0]) cylinder(r=1.1, h=4);
translate([2, width1/2+width2/2,0]) cylinder(r=1.1, h=4);

translate([12, width1/2-width2/2,0]) cylinder(r=1.1, h=4);
translate([12, width1/2+width2/2,0]) cylinder(r=1.1, h=4);
}
$fn=60;
width=29;
depth=1.6;
height=9;
holeDist = 6;



difference() {
    union(){
        translate([-2, -4, 0]) cube([width+depth*2, 6.5, height]);
        translate([width/2-12/2, -8, 0]) cube([12, 6, 10]);
    }
    translate([0, 0, 1]) cube([width, depth, height]); // board
    translate([2, -2, 2]) cube([width-4, 5, height-1]); // circuit board

translate([width/2-holeDist/2, 1, height*0.4]) rotate([90, 0, 0]) cylinder(r=1.1, h=5);
translate([width/2+holeDist/2, 1, height*0.4]) rotate([90, 0, 0]) cylinder(r=1.1, h=5); 
difference() {
    translate([width/2, -98, 0]) cylinder(r=95, h=9);
    translate([width/2, -98, 0]) cylinder(r=92.5, h=9);
}
}





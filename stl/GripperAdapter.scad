
$fn=120;
rotate([180,0,0]) import("/Users/I532165/projects/Thor/Thor-1.0/stl/Art56Interface.stl");

module fixHole(r=3.2) {
    linear_extrude(height = 3, center = true) {
        polygon([
            [r*cos(60),r*sin(60)],
            [r*cos(120),r*sin(120)],
            [r*cos(180),r*sin(180)],
            [r*cos(240),r*sin(240)],
            [r*cos(300),r*sin(300)],
            [r*cos(360),r*sin(360)],
            ]);
    }
}

module fixHole2(r=3.2) {
    rotate([0,0,90])
    linear_extrude(height = 3, center = true) {
        polygon([
            [r*cos(-60),r*sin(-60)],            
            [r*cos(0),r*sin(0)],
            [r*cos(60),r*sin(60)],
            [-10,r*sin(60)],
            [-10,r*sin(-60)],
            ]);
    }
}

difference() {
    h=10;
    translate([0,0,h]) cylinder(r=15, h=8);

    translate([0,0,0]) cylinder(r=8, h=20);

    // vertical holes
    translate([20*sin(120),20*cos(120),0]) cylinder(r=1.65, h=11);
    translate([20*sin(120),20*cos(120),9]) fixHole();
    translate([20*sin(240),20*cos(240),0]) cylinder(r=1.65, h=11);
    translate([20*sin(240),20*cos(240),9]) fixHole();
    translate([20*sin(360),20*cos(360),0]) cylinder(r=1.65, h=11);
    translate([20*sin(360),20*cos(360),9]) fixHole();


    // horizontal holes
    translate([0,0,18-5.1]) rotate([-90,0,0]) cylinder(r=1.65,h=100);
    translate([0,0,18-5.1]) rotate([-90,0,120]) cylinder(r=1.65,h=100);
    translate([0,0,18-5.1]) rotate([-90,0,240]) cylinder(r=1.65,h=100);
    translate([0,0,18-5.1]) rotate([-90,0,0]) translate([0,0,11]) fixHole2();
    translate([0,0,18-5.1]) rotate([-90,0,120]) translate([0,0,11]) fixHole2();
    translate([0,0,18-5.1]) rotate([-90,0,240]) translate([0,0,11]) fixHole2();

}


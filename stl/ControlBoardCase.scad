$fn=60;
include <PowerPlug.scad>
include <arduino_mega2560.scad>

/*
TODO PINS:
motor: 4x7=28
fans: 6x2=12
servo: 3
stop: 5x3=15
reserve:8
total: 64 pins
connector width: 2.54*32=82
connector height: 2.54*2=5.08
*/


module putPi() {//pi: 85x56
    color("#FF00FF") cube([85, 56, 40]);
    // fix pi
    translate([25, 80, 0]) rotate([90,0,0]) cylinder(r=1.65, h=100);
    translate([83, 80, 0]) rotate([90,0,0]) cylinder(r=1.65, h=100);
    translate([25, -3, 0]) rotate([90,0,0]) cylinder(r=3, h=2);
    translate([83, -3, 0]) rotate([90,0,0]) cylinder(r=3, h=2);
    // window
    translate([-7, 2, 10]) cube([10, 53, 20]);

}
module putMega() {//mega:110x55
    color("#FF88FF") cube([110, 55, 35]);
    color("#FF88FF") translate([0,0,-5]) createHolesMega2560();
}
module putShield() {//pcb controller:100x70
    color("#FF88FF") cube([100, 70, 40]);
    translate([96, 80, 0]) rotate([90,0,0]) cylinder(r=1.65, h=100); //fix hole
    translate([96, -3, 0]) rotate([90,0,0]) cylinder(r=3, h=2); //fix hole
    translate([11, 80, 0]) rotate([90,0,0]) cylinder(r=1.65, h=100); //fix hole
    translate([11, -3, 0]) rotate([90,0,0]) cylinder(r=3, h=2); //fix hole
    for ( y = [5:10:70]) {
      translate([-6, y, 5]) cube([7, 5, 30]);
    }        
}
module putPower() {//14x4x10
    color("#88CCFF") cube([140, 40, 100]);
    translate([3, 40-8, -5.1]) cylinder(r=1.6, h=200);
    translate([123, 40-9, -5.1]) cylinder(r=1.6, h=200);
    translate([3, 40-8, -5.1]) cylinder(r=3.1, h=2.5);
    translate([123, 40-9, -5.1]) cylinder(r=3.1, h=2.5);
    //90x90 vent
    color("#88CCFF") translate([25, 30, 10]) cube([90,20,90]);
}
module putPowerPlug() { //60x30x40
//    color("#FFFF88") cube([40, 30, 60]);
    translate([40, 30, 50]) rotate([0, 90, 90]) powerPlug(10);
}
module putPowerSwitch() { //40x30x30
    color("#CCFF88") cube([30, 30, 40]);
    translate([10, 26, 5]) cube([23, 10, 26]);
}
module putFan() { //8x8x2.5
    color("#CCFF88") cube([25,80,80]);
    //71.5 distance, M4 hole
    translate([-20,(80-71.5)/2,(80-71.5)/2]) rotate([0,90,0]) cylinder(r=2.2, h=200);
    translate([-20,(80-71.5)/2+71.5,(80-71.5)/2]) rotate([0,90,0]) cylinder(r=2.2, h=200);
    translate([-20,(80-71.5)/2,(80-71.5)/2+71.5]) rotate([0,90,0]) cylinder(r=2.2, h=200);
    translate([-20,(80-71.5)/2+71.5,(80-71.5)/2+71.5]) rotate([0,90,0]) cylinder(r=2.2, h=200);
    for (y = [8:10:75]) {
      translate([25, y, 10]) cube([7,5, 60]);
    }
}


//translate([0, 0, 0]) putMega();
//translate([0, 0, 35]) putPi();
//translate([0, 80, 0]) putPower();
//translate([0, 0, 70]) putShield();
//translate([145, 90, 0]) putPowerPlug();
//translate([150, 90, 70]) putPowerSwitch();
//translate([160, 0, 5]) putFan();


difference() {
    translate([-5, -5, -5]) cube([195, 130, 125]);
    translate([0, -0, 0]) cube([185, 120, 130]);

    translate([0, 0, 0]) putMega();
    translate([0, 0, 35]) putPi();
    translate([0, 0, 75]) putShield();
    translate([0, 80, 0]) putPower();
    translate([145, 90, 0]) putPowerPlug();
    translate([150, 90, 70]) putPowerSwitch();
    translate([160, 0, 5]) putFan();

}
translate([0, 120, 105]) coverFix();
translate([10, 0, 105]) rotate([0,0,180]) coverFix();
translate([175, 120, 105]) coverFix();
translate([185, 0, 105]) rotate([0,0,180]) coverFix();


//rotate([90, 0, 90]) powerPlug();

/*
    translate([60, 120, 60]) rotate([90, 0, 0]) cylinder(r=1.65,h=100);// horizontal fix hole
    translate([210, 120, 50]) rotate([90, 0, 0]) cylinder(r=1.65,h=100);// horizontal fix hole
    translate([60, 120, 10]) rotate([90, 0, 0]) cylinder(r=1.65,h=100);// horizontal fix hole
    translate([210, 120, 10]) rotate([90, 0, 0]) cylinder(r=1.65,h=100);// horizontal fix 
*/


module coverFix(r=3.2) {
    rotate([0,-90,180])
    difference() {
        linear_extrude(height=10) {
            polygon([[0,0],[10,0],[10,10],]);
         }
         translate([1, 3.5, 5]) rotate([0,90,0]) cylinder(r=1.65,h=20);


         r=3.2;
         translate([6,3.5,5])

         rotate([90,0,-90]) linear_extrude(height = 3, center = true) {
            polygon([
                [r*cos(-60),r*sin(-60)],            
                [r*cos(0),r*sin(0)],
                [r*cos(60),r*sin(60)],
                [-10,r*sin(60)],
                [-10,r*sin(-60)],
                ]);
         }
    }    
}

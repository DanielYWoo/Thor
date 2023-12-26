$fn=30;
width=12;
len=35; // total
holeDistFix = 27.5; // to body fix
holderOffset=5;
radius = 3.4; // hole radius

difference() {
    cube([width, len, 2]);

    translate([width/2,holderOffset,-1]) cylinder(r=1.7, h=12); // hole1
    translate([width/2,holderOffset+holeDistFix,-1]) cylinder(r=1.7, h=12); // hole to fix
    translate([width/2-radius,holderOffset+2.5,-1]) cube([radius*2,15,3]); // rect hole for the sensor

    // the carve out to hold the sensor
    translate([width/2,holderOffset,1]) cylinder(r=radius, h=8);
    translate([width/2,holderOffset+20,1]) cylinder(r=radius,h=8);
    translate([width/2-radius,holderOffset,1]) cube([radius*2,19.5,3]);    
}






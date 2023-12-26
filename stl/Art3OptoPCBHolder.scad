$fn=60;
lenToWall=10;
lenToRing=23;
width=15;
ringToEdge=8;

carveWidth=6.6;
carveLen=19;



difference() {
    union() {
       cube([width, lenToRing+ringToEdge, 2]);
    }
    translate([width/2-carveWidth/2, 10, 0]) cube([carveWidth, carveLen, 3]);
    translate([width/2, lenToWall, 0]) cylinder(r=carveWidth/2, h=15); // wall side carve
    translate([width/2, 3, 0]) cylinder(r=1.65, h=15); // wall side 3m fix

}

//    translate([width/2, lenToRing, 0]) cylinder(r=0.5, h=10); // ring position

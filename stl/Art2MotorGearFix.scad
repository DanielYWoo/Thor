
difference() {
union() {
    import("/Users/I532165/Downloads/Thor-1.0/stl/Art3TensionerBody.stl");
    translate([0,-1.25,-2]) cube([13.5,14,2]); //bottom
    translate([0,-1.25,-2]) color("#FF00BB") cube([13.5,4,12]);
    translate([0,-1.25+10,-2]) color("#FF00BB") cube([13.5,4,12]);    
}
union() {
    translate([2.5,2.7,-10]) cube([3.2,6.2,20]);
    translate([0,-1.25,7]) cube([13.5,14,10]);
    }
}
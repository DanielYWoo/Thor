$fn=600;
// OpenSCAD is buggy, need to export and upload to this tool to fix it
//https://www.formware.co/onlinestlrepair
difference() {

    import(file="Art2MotorGear.stl", convexity=50, $fn=600);

    rotate([0,0,-90]) difference() {
        translate([0,0,-1]) cylinder(r=4.5, h=30);
        translate([-5,3,-1]) cube([10,10,30]);
    }

}
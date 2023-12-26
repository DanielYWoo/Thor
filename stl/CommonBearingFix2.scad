$fn=60;
difference() {
    union() {
        import("./CommonBearingFixThrough.stl");
        cylinder(r=7,h=8);        
    }

    cylinder(r=4,h=3);
}
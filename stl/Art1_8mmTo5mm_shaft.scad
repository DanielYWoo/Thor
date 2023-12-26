$fn=60;
inner=5.2/2;
outer=7.8/2;
depth=5.5;

difference() {
cylinder(r=outer, h=depth);
cylinder(r=inner, h=depth+1);
}
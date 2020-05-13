



rad=50;
h1=250;
h2=50;
module base(rad, h1, h2){
difference(){
cylinder(h1,rad,rad,$fn=100);
    translate([0,0,h2+3])
    cylinder(h1-h2,rad-3,rad-3,$fn=100);
    translate([0,0,h1-20])
    cylinder(21,rad+1,rad+1,$fn=100);
    translate([0,0,-1])
    cylinder(h2+1,rad-3,rad-3,$fn=100);
    translate([43,0,49])
    cylinder(5,2.5,2.5,$fn=100);
    translate([-43,0,49])
    cylinder(5,2.5,2.5,$fn=100);
    translate([43,-8,100])
    cube([10,15,7]);

}
translate([38.5,-8,97])
union(){
    difference(){
    cube([10,17,8]);
    translate([-1,1,3])
    cube([12,15,7]);
    }
}}

base(rad, h1, h2);

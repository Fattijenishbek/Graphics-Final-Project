x=6;
y=4;
z=70;

rad=50;
h1=250;
h2=50;

module tube(x,y,z){
rotate([0,300,0])
difference(){
cylinder(z, x,x+5, $fn=100);
    translate([0,0,-1])
    cylinder(z+2,y,y+6, $fn=100);}
}

translate([0,70,70])
rotate([0,-120,0])
tube(x,y,z);


module cap(x,y,z){
union(){
difference(){
cylinder(20,rad+3,rad+3,$fn=100);
    translate([0,0,3])
    cylinder(20,rad+1,rad+1,$fn=100);
}
}}
translate([80,0,0])
cap(x,y,z);


module bottom(x,y,z){
union(){
difference(){
cylinder(10,rad-3,rad-3,$fn=100);
    translate([0,0,3])
    cylinder(10,rad-5,rad-5,$fn=100);
}
}}
translate([-50,0,0])
bottom(x,y,z);
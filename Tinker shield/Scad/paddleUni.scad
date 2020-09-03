difference(){
//otwor pod srube    


hull(){
translate([2,0,0]){
cube([6,6,12],true);    
    }     

    
translate([0,20,6]){
rotate([0,90,0]){
cylinder(2,13,13,$fn=50,true);
}
}

translate([0,20,-6]){
rotate([0,90,0]){
cylinder(2,13,13,$fn=50,true);
}
}

}

translate([2,0,3]){
rotate([0,90,0]){
cylinder(6,1.5,1.5,$fn=50,true);
}
}

translate([0,0,3]){
rotate([0,90,0]){
cylinder(2,2,1.5,$fn=50,true);
}
}

translate([2,0,-3]){
rotate([0,90,0]){
cylinder(6,1.5,1.5,$fn=50,true);
}
}
translate([0,0,-3]){
rotate([0,90,0]){
cylinder(2,2,1.5,$fn=50,true);
}
}
}

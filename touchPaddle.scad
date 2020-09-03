
//obudowa
translate([0,7.5,-10]){
color("grey")cube([40,50,2],true);
}
/*
translate([0,7.5,28]){
color("grey")cube([40,50,2],true);
}
*/
translate([-19,7.5,9]){
color("grey")cube([2,50,40],true);
}
translate([19,7.5,9]){
color("grey")cube([2,50,40],true);
}

//elektronika
translate([0,0,0]){
color("green")cube([20,35,2],true);
}
//trinket
translate([0,-3.5,4]){    
color("red")cube([16,28,6],true);
}
//gniazdo
translate([0,-13,-3.5]){    
color("yellow")cube([7,9,5],true);
}

//dystanse elektronika
translate([-8,-13,-9]){    
color("black")cylinder(8,1.5,1.5,$fn=30);
}
translate([8,-13,-9]){    
color("black")cylinder(8,1.5,1.5,$fn=30);
}
translate([8,13,-9]){    
color("black")cylinder(8,1.5,1.5,$fn=30);
}
translate([-8,13,-9]){    
color("black")cylinder(8,1.5,1.5,$fn=30);
}

//dystanse elektronika tensometry
translate([-18,-11,12]){   
rotate([0,90,0]){    
color("black")cylinder(2,2,2,$fn=30);
}
}
translate([-18,-11,6]){  
rotate([0,90,0]){  
color("black")cylinder(2,2,2,$fn=30);
}
}
translate([16,-11,12]){   
rotate([0,90,0]){    
color("black")cylinder(2,2,2,$fn=30);
}
}
translate([16,-11,6]){  
rotate([0,90,0]){  
color("black")cylinder(2,2,2,$fn=30);
}
}
//tensometry
translate([13,9,9]){
color("blue")cube([6,46,12],true);
}
translate([-13,9,9]){
color("blue")cube([6,46,12],true);
}
//aku
translate([0,0,21.5]){
color("pink")cube([36,25,10],true);
}

//lopatka1
translate([5,29,9]){
hull(){
cube([2,6,12],true);
    
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
}

//lopatka2
translate([-5,29,9]){
hull(){
cube([2,6,12],true);
    
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
}

//dystanse lopatki
translate([-10,29,12]){   
rotate([0,90,0]){    
color("black")cylinder(4,2,2,$fn=30);
}
}
translate([-10,29,6]){  
rotate([0,90,0]){  
color("black")cylinder(4,2,2,$fn=30);
}
}
translate([6,29,12]){   
rotate([0,90,0]){    
color("black")cylinder(4,2,2,$fn=30);
}
}
translate([6,29,6]){  
rotate([0,90,0]){  
color("black")cylinder(4,2,2,$fn=30);
}
}
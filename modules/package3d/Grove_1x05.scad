module pin_01(pin_heigth=9,pin_size=0.5,pin_angle=3,pin_chanfer=0.05){
    epsilon=0.01;
    difference(){
        cube([pin_size,pin_size,pin_heigth]);
        translate([-epsilon,pin_size-pin_chanfer,pin_heigth])rotate([pin_angle,0,0])translate([0,0,-pin_heigth])cube([pin_size+2*epsilon,pin_size,pin_heigth]);
        translate([-epsilon,pin_chanfer,pin_heigth])rotate([-pin_angle,0,0])translate([0,-pin_size,-pin_heigth])cube([pin_size+2*epsilon,pin_size,pin_heigth]);     
        translate([pin_size-pin_chanfer,-epsilon,pin_heigth])rotate([0,-pin_angle,0])translate([0,0,-pin_heigth])cube([pin_size,pin_size+2*epsilon,pin_heigth]);
        translate([pin_chanfer,-epsilon,pin_heigth])rotate([0,pin_angle,0])translate([-pin_size,0,-pin_heigth])cube([pin_size,pin_size+2*epsilon,pin_heigth]);     
    }
}
module pin_02(pin_heigth=9,pin_size=0.5,pin_angle=3,pin_chanfer=0.05){
    epsilon=0.01;
    difference(){
        cube([pin_size,pin_size,pin_heigth]);
        translate([-epsilon,pin_size-pin_chanfer,0])rotate([-pin_angle,0,0])cube([pin_size+2*epsilon,pin_size,pin_heigth]);
        translate([-epsilon,pin_chanfer,0])rotate([pin_angle,0,0])translate([0,-pin_size,0])cube([pin_size+2*epsilon,pin_size,pin_heigth]);     
        translate([pin_size-pin_chanfer,-epsilon,0])rotate([0,pin_angle,0])cube([pin_size,pin_size+2*epsilon,pin_heigth]);
        translate([pin_chanfer,-epsilon,0])rotate([0,-pin_angle,0])translate([-pin_size,0,0])cube([pin_size,pin_size+2*epsilon,pin_heigth]);
    }
}
module pin(pin_heigth=9,pin_size=0.5,pin_angle=3,pin_chanfer=0.05)
{
    translate([0,0,pin_heigth/2-1.5]) pin_01(pin_heigth/2+2);
    translate([0,-4,4.5-1.5])  rotate([270,0,0]) pin_02(pin_heigth/2);
}


$fn=360;

epsilon = 1e-3;
translate([-2,-2.25,0])union(){
    difference(){
        cube([12,5.1,8.1]);
        union(){
            translate([0.6,0.6,2.7])union(){
                cube([12-2*0.6,3.2,5.4+2*epsilon]);
                translate([10.2,0.6,0])cube([0.6,3.2,5.4+2*epsilon]);
                translate([0,0.6,0])cube([0.6,3.2,5.4+2*epsilon]);
            }
            translate([1.75,4.3,-1])cube([8.5,2,12]);
            translate([-epsilon,4.3,-epsilon])cube([12+2*epsilon,0.9+epsilon,1.3+epsilon]);
            translate([2.3,3.7,4.7])cube([7.2,1,3.4+epsilon]);
            translate([2,-epsilon,6.85])cube([8,1,1.25+epsilon]);
            translate([1.45,3.1,0])rotate([-45,0,0])cube([1.2,3,2]);
            translate([3.45,3.1,0])rotate([-45,0,0])cube([1.2,3,2]);
            translate([5.45,3.1,0])rotate([-45,0,0])cube([1.2,3,2]);
            translate([7.45,3.1,0])rotate([-45,0,0])cube([1.2,3,2]);     
            
            translate([9.45,3.1,0])rotate([-45,0,0])cube([1.2,3,2]);     
            
            translate([1.45,-.8,2])rotate([225,0,0])cube([1.2,3,4]);
            translate([3.45,-.8,2])rotate([225,0,0])cube([1.2,3,4]);
            translate([5.45,-.8,2])rotate([225,0,0])cube([1.2,3,4]);
            translate([7.45,-.8,2])rotate([225,0,0])cube([1.2,3,4]);
            
            translate([9.45,-.8,2])rotate([225,0,0])cube([1.2,3,4]);

        }
    }
    translate([3.25,3.8,3.3])
    difference(){
        cube([5.5,1.3,1.4]);
        translate([-0.5,1.3,0])rotate([30,0,0])cube([6.5,1.3,5]);
    }
    translate([1.75,2,-3.5])pin();
    translate([3.75,2,-3.5])pin();
    translate([5.75,2,-3.5])pin();
    translate([7.75,2,-3.5])pin();
    translate([9.75,2,-3.5])pin();
}



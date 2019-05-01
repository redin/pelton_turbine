hub();
rotate([0,180,0])translate([0,77.25,7])turgo();
rotate([0,180,20])translate([0,77.25,7])turgo();
rotate([0,180,40])translate([0,77.25,7])turgo();
rotate([0,180,60])translate([0,77.25,7])turgo();
rotate([0,180,80])translate([0,77.25,7])turgo();
rotate([0,180,100])translate([0,77.25,7])turgo();
rotate([0,180,120])translate([0,77.25,7])turgo();
rotate([0,180,140])translate([0,77.25,7])turgo();
rotate([0,180,160])translate([0,77.25,7])turgo();
rotate([0,180,180])translate([0,77.25,7])turgo();
rotate([0,180,200])translate([0,77.25,7])turgo();
rotate([0,180,220])translate([0,77.25,7])turgo();
rotate([0,180,240])translate([0,77.25,7])turgo();
rotate([0,180,260])translate([0,77.25,7])turgo();
rotate([0,180,280])translate([0,77.25,7])turgo();
rotate([0,180,300])translate([0,77.25,7])turgo();
rotate([0,180,320])translate([0,77.25,7])turgo();
rotate([0,180,340])translate([0,77.25,7])turgo();

module hub(){
    union(){
    difference(){
        translate([0,0,10])cylinder($fn = 99, $fa = 10, $fs = 10, h = 20, d= 30, center = true);
        translate([0,0,15])rotate([90,0,0])cylinder($fn = 99, $fa = 10, $fs = 10, h = 50, d=3, center = true);
        cylinder($fn = 99, $fa = 10, $fs = 10,  h =50, d= 20, center = true);
        translate([0,-10,0])cube([5,5,80],center = true);
    }
    difference(){
        cylinder($fn = 99, $fa = 2, $fs = 2,  h = 14, d= 100, center = true);
        cylinder($fn = 99, $fa = 10, $fs = 10,  h = 20, d= 20, center = true);
        translate([0,-10,0])cube([5,5,80],center = true);
    }
}
}

module turgo(){
    union(){
        translate([7.5,-1,0])rotate([0,90,0])scale([0.65,0.65,0.65])blade();
        translate([7.5,1,0])rotate([0,90,0])scale([0.65,0.65,0.65])handle();
    }
}

module blade(){
    translate([11.999,0,0])half_blade();
}

module handle(){
    difference(){
        translate([10,-20,-10])cube([20,50,14],center = true);
        translate([12,0,0])scale([1.25,2.5,1.5])sphere($fn = 99, $fa = 2, $fs = 2, d= 30, center = true);
        blade();
    }
}

module half_blade(){
    difference(){
        scale([1.25,2.5,1.5])sphere($fn = 99, $fa = 2, $fs = 2, d= 30, center = true);
        scale([1.25,2.5,1.5])sphere($fn = 99, $fa = 2, $fs = 2, d= 26, center = true);
        translate([0,0,12])cube([80,80,20],center = true);
        translate([-22,0,0])cube([20,80,40],center = true);
        //translate([-5,30,0])scale([1,2,1])cylinder($fn = 200, $fa = 1, $fs = 1, h=50,r=8, center = true);
    }
}

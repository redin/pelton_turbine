
hub();
rotate([0,0,0])translate([-1,79.25,0])pelton();
rotate([0,0,20])translate([-1,79.25,0])pelton();
rotate([0,0,40])translate([-1,79.25,0])pelton();
rotate([0,0,60])translate([-1,79.25,0])pelton();
rotate([0,0,80])translate([-1,79.25,0])pelton();
rotate([0,0,100])translate([-1,79.25,0])pelton();
rotate([0,0,120])translate([-1,79.25,0])pelton();
rotate([0,0,140])translate([-1,79.25,0])pelton();
rotate([0,0,160])translate([-1,79.25,0])pelton();
rotate([0,0,180])translate([-1,79.25,0])pelton();
rotate([0,0,200])translate([-1,79.25,0])pelton();
rotate([0,0,220])translate([-1,79.25,0])pelton();
rotate([0,0,240])translate([-1,79.25,0])pelton();
rotate([0,0,260])translate([-1,79.25,0])pelton();
rotate([0,0,280])translate([-1,79.25,0])pelton();
rotate([0,0,300])translate([-1,79.25,0])pelton();
rotate([0,0,320])translate([-1,79.25,0])pelton();
rotate([0,0,340])translate([-1,79.25,0])pelton();


module hub(){
    difference(){
        translate([0,0,10])cylinder($fn = 99, $fa = 10, $fs = 10, h = 20, d= 30, center = true);
        translate([0,0,15])rotate([90,0,0])cylinder($fn = 99, $fa = 10, $fs = 10, h = 50, d=3, center = true);
        cylinder($fn = 99, $fa = 10, $fs = 10,  h =50, d= 20, center = true);
        translate([0,-10,0])cube([5,5,80],center = true);
    }
    difference(){
        cylinder($fn = 99, $fa = 10, $fs = 10,  h = 19.5, d= 100, center = true);
        cylinder($fn = 99, $fa = 10, $fs = 10,  h = 20, d= 20, center = true);
        translate([0,-10,0])cube([5,5,80],center = true);
        rotate([0,90,0])translate([0,41.25,0])socket();
        rotate([0,90,20])translate([0,41.25,0])socket();
        rotate([0,90,40])translate([0,41.25,0])socket();
        rotate([0,90,60])translate([0,41.25,0])socket();
        rotate([0,90,80])translate([0,41.25,0])socket();
        rotate([0,90,100])translate([0,41.25,0])socket();
        rotate([0,90,120])translate([0,41.25,0])socket();
        rotate([0,90,140])translate([0,41.25,0])socket();
        rotate([0,90,160])translate([0,41.25,0])socket();
        rotate([0,90,180])translate([0,41.25,0])socket();
        rotate([0,90,200])translate([0,41.25,0])socket();
        rotate([0,90,220])translate([0,41.25,0])socket();
        rotate([0,90,240])translate([0,41.25,0])socket();
        rotate([0,90,260])translate([0,41.25,0])socket();
        rotate([0,90,280])translate([0,41.25,0])socket();
        rotate([0,90,300])translate([0,41.25,0])socket();
        rotate([0,90,320])translate([0,41.25,0])socket();
        rotate([0,90,340])translate([0,41.25,0])socket();
    }
}

module socket(){
    scale([0.7,0.7,0.7])rotate([0,0,180])union(){
    difference(){
        cube([15,25,15],center = true);
        translate([0,0,-9.75])rotate([10,0,0])cube([16,40,10],center = true);
        translate([0,0,9.75])rotate([-10,0,0])cube([16,40,10],center = true);
    }
        translate([0,-6,0])rotate([0,90,0])cylinder($fn = 99, $fa = 10, $fs = 10, h = 50, d= 5, center = true);
        translate([0,4,0])rotate([0,90,0])cylinder($fn = 99, $fa = 10, $fs = 10, h = 50, d= 5, center = true);    
   }
}

module wedge(){
    rotate([0,0,180])difference(){
        scale([1,1.06,1])cube([15,25,15],center = true);
        translate([0,0,-9.7])rotate([10,0,0])cube([16,40,10],center = true);
        translate([0,0,9.7])rotate([-10,0,0])cube([16,40,10],center = true);
        translate([0,-6,0])rotate([0,90,0])cylinder($fn = 99, $fa = 10, $fs = 10, h = 50, d= 5, center = true);
        translate([0,4.5,0])rotate([0,90,0])cylinder($fn = 99, $fa = 10, $fs = 10, h = 50, d= 5, center = true);    
   }
}

module pelton(){
    union(){
    translate([7.5,-1,0])rotate([0,90,0])scale([0.65,0.65,0.65])blade();
    translate([7.5,1,0])rotate([0,90,0])scale([0.65,0.65,0.65])handle();
    }
}

module blade(){
    union(){
    translate([11.999,0,0])half_blade();
    translate([-11.999,0,0])mirror([1,0,0])half_blade();
    }
}

module handle(){
    union(){
    difference(){
        translate([0,-20,-10])cube([30,50,14],center = true);
        translate([12,0,0])scale([1.25,2.5,1.5])sphere($fn = 200, $fa = 1, $fs = 1, d= 30, center = true);
        translate([-12,0,0])scale([1.25,2.5,1.5])sphere($fn = 200, $fa = 1, $fs = 1, d= 30, center = true);
        blade();
    }
    translate([0,-58.2,-10])wedge();
}
}

module half_blade(){
    difference(){
        scale([1.25,2.5,1.5])sphere($fn = 200, $fa = 1, $fs = 1, d= 30, center = true);
        scale([1.25,2.5,1.5])sphere($fn = 200, $fa = 1, $fs = 1, d= 26, center = true);
        translate([0,0,12])cube([80,80,30],center = true);
        translate([-22,0,0])cube([20,80,40],center = true);
        translate([-5,30,0])scale([1,2,1])cylinder($fn = 200, $fa = 1, $fs = 1, h=50,r=8, center = true);
        
    }
}

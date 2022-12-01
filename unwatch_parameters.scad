board_w = 47;
board_h = 33;
board_thickness = 2;

outer_lip = 0.5;
inner_lip = 2;

case_thickness = 8;

band_w = 22;
band_h = 1;

module lug_slot() {
    h = board_h+outer_lip*2;
    translate([0, 0, band_h/2])
    rotate([90, 0, 0]) 
    translate([0, 0, -h/2]) 
    rotate([0, 0, 90])
    linear_extrude(board_h+outer_lip*2) 
        square([band_h, band_w], true);
}

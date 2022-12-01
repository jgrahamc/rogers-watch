include <rounded_rectangle.scad>;
include <unwatch_parameters.scad>;

module case() {
    translate([0, 0, -board_thickness])
    linear_extrude(board_thickness) 
    difference() {
        rounded_rectangle(board_w+outer_lip*2, board_h+outer_lip*2);
        rounded_rectangle(board_w, board_h);
    }

    translate([0, 0, -case_thickness-board_thickness])
    linear_extrude(case_thickness)
    difference() {
        rounded_rectangle(board_w+outer_lip*2, board_h+outer_lip*2);
        rounded_rectangle(board_w-inner_lip, board_h-inner_lip);
    }
}

difference() {
    case();
    translate([0, 0, -case_thickness-board_thickness+1])
        lug_slot();
}

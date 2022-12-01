include <rounded_rectangle.scad>;
include <unwatch_parameters.scad>;

back_w = board_w-inner_lip;
back_d = board_h-inner_lip;
back_h = 3;
back_thickness = 1;

difference() {
    linear_extrude(back_h)
        rounded_rectangle(back_w, back_d);
    
    translate([0, 0, back_thickness])
    linear_extrude(back_h - back_thickness)
         rounded_rectangle(back_w-outer_lip, back_d-outer_lip);
    
    translate([0, 0, back_thickness])
        lug_slot();
}

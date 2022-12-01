module rounded_rectangle(w, h) {
    r = min(w, h) * 0.05;
    $fn = 100;
    
    hull() {
        for (x = [-w/2+r, w/2-r]) {
            for (y = [-h/2+r, h/2-r]) {
                translate([x, y, 0]) circle(r);
            }
        }
    }
}

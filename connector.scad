connector();

module connector(height=12.26, bottomOuterRadius=8.64, topOuterRadius=4.60, bottomInnerRadius=5.71, topInnerRadius=2.44) {
    difference() {
        cylinder(height, bottomOuterRadius, topOuterRadius);
        translate([0, 0, 0]) cylinder(height, bottomInnerRadius, topInnerRadius);
    }
}
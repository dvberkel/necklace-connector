translate([0, 0, 0]) connectorWithoutCap();
translate([10, 0, 0]) connectorWithCap();

module connectorWithoutCap(height=12.26, bottomOuterDiameter=8.64, topOuterDiameter=4.60, bottomInnerDiameter=5.71, topInnerDiameter=2.44) {
    difference() {
        cylinder(height, bottomOuterDiameter/2, topOuterDiameter/2);
        translate([0, 0, 0]) cylinder(height, bottomInnerDiameter/2, topInnerDiameter/2);
    }
}

module connectorWithCap(height=12.26, bottomOuterDiameter=4.60, topOuterDiameter=8.64, bottomInnerDiameter=2.44, topInnerDiameter=4.30) {
    difference() {
        cylinder(height, bottomOuterDiameter/2, topOuterDiameter/2);
        translate([0, 0, 0]) cylinder(height, bottomInnerDiameter/2, topInnerDiameter/2);
    }
}
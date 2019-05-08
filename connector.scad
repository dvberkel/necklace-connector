translate([ 0, 0, 0]) connectorWithoutCap();
translate([10, 0, 0]) connectorWithCap();
translate([20, 0, 0]) snap();

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

module snap(height=2.66, smallerOuterDiameter=5.12, biggerOuterDiameter=5.70, innerRadius=2.44) {
    difference() {
        union() {
            translate([0, 0, 0       ]) cylinder(height/2, d=smallerOuterDiameter);
            translate([0, 0, height/2]) cylinder(height/2, d=biggerOuterDiameter);
        }
        cylinder(height, d=innerRadius);
    }
}
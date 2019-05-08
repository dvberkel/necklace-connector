$fn=32;

translate([ 0, 0, 0]) connectorWithoutCap();
translate([10, 0, 0]) connectorWithCap();

module connectorWithoutCap(height=12.26, bottomOuterDiameter=8.64, topOuterDiameter=4.60, bottomInnerDiameter=5.60, topInnerDiameter=2.44) {
    difference() {
        cylinder(height, d1=bottomOuterDiameter, d2=topOuterDiameter);
        cylinder(height, d1=bottomInnerDiameter, d2=topInnerDiameter);
        snap();
    }
}

module connectorWithCap(height=12.26, bottomOuterDiameter=4.60, topOuterDiameter=8.64, bottomInnerDiameter=2.44, topInnerDiameter=4.30) {
    difference() {
        union() {
            cylinder(height, d1=bottomOuterDiameter, d2=topOuterDiameter);
            translate([0, 0, height]) snap();
        }
        cylinder(height, d1=bottomInnerDiameter, d2=topInnerDiameter);
    }
}

module snap(height=2.66, smallerOuterDiameter=5.12, biggerOuterDiameter=5.70, innerDiameter=2.44) {
    difference() {
        union() {
            translate([0, 0, 0       ]) cylinder(height/2, d=smallerOuterDiameter);
            translate([0, 0, height/2]) cylinder(height/2, d=biggerOuterDiameter);
        }
        cylinder(height, d=innerDiameter);
    }
}
sheetWidth = 279.4;
sheetHeight = 355.6;

holeWidth = 119.7;
holeHeight = 40.7;
buffer = 20;
padding = (sheetWidth - holeWidth * 2) / 3;

difference() {
    // Acrylic Panel
    square([sheetWidth, sheetHeight]);

    // Cutouts
    for(a = [0:2]) {
        translate([padding, a * (holeHeight + buffer) + buffer, 0])
        square([holeWidth, holeHeight]);
        translate([padding * 2 + holeWidth, a * (holeHeight + buffer) + buffer, 0])
        square([holeWidth, holeHeight]);
    }
}
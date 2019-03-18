include <sub/box.scad>
include <../lib/rbpi/raspberrypi.scad>

$fn = 50;
Box();
translate([100, 100, 0]){
pi3();
}

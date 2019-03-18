module Box(width = 600, height = 600, depth = 300,
corner_radius = 1, thickness = 1) {
  eps = 0.5;
  difference () {
    minkowski () {
      cube([width, height, depth + eps]);
      sphere(corner_radius);
    }
    translate([thickness / 2, thickness / 2, thickness]) {
      minkowski () {
        cube([width - thickness,
            height - thickness,
            depth]);
        sphere(corner_radius);
      }
    }
  }
}

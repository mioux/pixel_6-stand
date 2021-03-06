difference()
{
  union()
  {
    translate([0, 3 * cos(20), 6.2 * cos(20)])
    {
      rotate([-20, 0, 0])
      {
        difference()
        {

          // Main support

          union()
          {
            // Phone holder

            difference()
            {
              cube([86, 17, 80]);
              translate([3, -1, 30])
              {
                cube([80, 15, 60]);
              }
            }

            // Front plate
            translate([0, -3, 0])
            {
              union()
              {
                cube([86, 3, 30]);

                translate([0, 0, 30]) cube([10, 3, 10]);

                translate([76, 0, 30]) cube([10, 3, 10]);

                // Right suppport lock
                translate([10, 0, 40])
                  rotate([-90, 0, 0]) cylinder(h=3, d=3, center=false, $fn=100);

                translate([8.5, 0, 0]) cube([3, 3, 40]);

                translate([0, 0, 40]) cube([10, 3, 1.5]);

                // Right suppport lock
                translate([76, 0, 40])
                  rotate([-90, 0, 0]) cylinder(h=3, d=3, center=false, $fn=100);

                translate([74.5, 0, 0]) cube([3, 3, 40]);

                translate([76, 0, 40]) cube([10, 3, 1.5]);
              }
            }
            // End front plate
          }

          // Remove matter in the back
          translate([13, 10, 30]) cube([60, 10, 80]);
          translate([10, 10, 33]) cube([66, 10, 80]);

          translate([13, 10, 33]) {
            rotate([-90, 0, 0]) cylinder(h=10, d=6, center=false, $fn=100);
          }

          translate([73, 10, 33]) {
            rotate([-90, 0, 0]) cylinder(h=10, d=6, center=false, $fn=100);
          }
          // End remove mate
        }

      }
    }

    cube([86, 18.8, 7]);
    cube([86, 70, 6]);
  }

  translate([0, 3 * cos(20), 6.5 * cos(20)])
  {
    rotate([-20, 0, 0])
    {
      union()
      {
        // Empty the speakers holes
        // left
        translate([18, 7, 11]) cylinder(d=8, h=20, $fn=100);
        translate([31, 7, 11]) cylinder(d=8, h=20, $fn=100);
        translate([18, 3, 11]) cube([13, 8, 20]);

        // right
        translate([68, 7, -21]) cylinder(d=8, h=65, $fn=100);
        translate([55, 7, -21]) cylinder(d=8, h=65, $fn=100);
        translate([55, 3, -21]) cube([13, 8, 65]);

        translate([37, 3.5, 11]) cube([12, 7, 18.5 + 1]);

        translate([43, 6.9, -21]) cylinder(d=4.2, h=65, $fn=100);

        translate([43, 4.8, -21]) cube([20, 4.2, 65]);
      }
    }
  }

  translate([43, 5.8, 1.6])
    rotate([-90, 0, 0]) cylinder(d=4.2, h=80, $fn=100);

  translate([43-2.1, 5.8, -1]) cube ([4.2, 80, 2.6]);

  for(k = [0:36:36])
    for(j = [0:4:8])
      for(i = [0:3:9])
        translate([20 + i + k, -1, 18 + j])
          rotate([-90, 0, 0]) cylinder(d=2, h=16, $fn=100);

  translate([43, 13, 2])
    rotate([45, 0, 0]) cylinder(d=4.2, h=5, $fn = 100);
  translate([41, 11, 1])
    rotate([45, 0, 0]) cube([4.2, 2.1, 4.2]);

}

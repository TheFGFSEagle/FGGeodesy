# FGGeodesy
FlightGear addon for geodesy things, like measuring distances, angles, areas, etc.

## Installation
Install it like any other FlightGear addon - download this repository, either as ZIP archive (and unzip that) or with `git clone`, then add the resulting folder to the Addons list in the FGLauncher's `Addons` tab, or, if you are not using the launcher, add:
```
--addon=/path/to/addon/folder
```
to the command line, where `/path/to/addon/folder` is the path to the addon folder which contains this `README.md` file.

## Usage
To use the addon in the simulator, hold the Alt key and click anywhere in the scenery. At each click, a tooltip in the main simulator window will display the coordinates of the clicked position, and the total distance of a line formed by the points you clicked, in the order you clicked. To clear the points and start measuring anew, press Alt+d.

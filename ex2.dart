void main() {
  Cuboid myCuboid = Cuboid(1, 2, 3);
  print(myCuboid.Volume);
  print(myCuboid.SurfaceArea);

  Cube myCube = Cube(2);
  print(myCube.Volume);
  print(myCube.SurfaceArea);
}

class Cuboid {
  int length;
  int width;
  int height;

  Cuboid(int length, int width, int height) {
    this.length = length;
    this.width = width;
    this.height = height;
  }

  int get SurfaceArea {
    return 2 * this.length * this.width +
        2 * this.length * this.height +
        2 * this.height * this.width;
  }

  int get Volume {
    return this.length * this.width * this.height;
  }
}

class Cube extends Cuboid {
  Cube(int length) : super(length, length, length) {
    super.length = length;
    super.width = length;
    super.height = length;
  }
}

abstract class Vehicle {
  // Protected variable
  int _speed = 0;

  // Abstract method
  void move();
  // Non-abstract method to set speed
  void setSpeed(int speed) {
    _speed = speed;
  }
  // Getter to retrieve speed
  int get speed => _speed;
}

class Car extends Vehicle {
  // Implementing the abstract method
  @override
  void move() {
    print("The car is moving at ${speed} km/h");
  }
}

void main() {
  // Create an object of Car
  Car myCar = Car();
  myCar.setSpeed(60);
  // Call the move() method
  myCar.move();
}

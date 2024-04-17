class ParkingSystem {
  int big,medium,small;
  ParkingSystem(this.big, this.medium, this.small);
  bool addCar(int carType) {
    switch(carType){
      case 1:
        return big-->0;
      case 2:
        return medium-->0;
      case 3:
        return small-->0;
      default:
        return false;
    }
  }
}

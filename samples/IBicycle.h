#ifndef IBICYCLE_H
#define IBICYCLE_H

#include <iostream>
#include <cassert>

class IBicycle {
public:
  void virtual EwistTheWheel() = 0;
  void virtual Ride() = 0;
  bool virtual WheelDiameter(float forward, float back) = 0;
};

class SampleBicycle : public IBicycle {
  public: 
    void EwistTheWheel() override {
      std::cout << "Method SampleBicycle" << std::endl;
    }

    void Ride() override {
      std::cout << "Method Ride() SampleBicycle " << std::endl;
    }

    bool WheelDiameter(float forward, float back) override {
        assert(forward > 0 && back > 0);

        std::cout << "forward Wheel Diameter is " << forward << std::endl;
        std::cout << "back Wheel Diameter is " << back << std::endl;

        return true;
    }
};

class Human  {
  public: 
    void RideOn(IBicycle &bicucle) {
        std::cout << "Крутемо руль" << std::endl;
        bicucle.EwistTheWheel();
        std::cout << "Поехали " << std::endl;
        bicucle.Ride();
    }

    void RideWheelsDia(IBicycle &bicucle, float forward, float back) {
        bicucle.WheelDiameter(forward, back);
    }
};

#endif
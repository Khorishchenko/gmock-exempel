#ifndef IBICYCLE_H
#define IBICYCLE_H

#include <iostream>
#include <cassert>

class IBicycle {
public:
  void virtual EwistTheWheel() = 0;
  void virtual Ride() = 0;
  bool virtual WheelDiameter(float forward, float back) = 0;
  bool virtual ColorBicycle(std::string color) = 0;
  bool virtual Price(int price) = 0;
};

class SampleBicycle : public IBicycle {

  std::string m_ColorBicycle;
  int m_PriceBicycle;

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

    bool ColorBicycle(std::string color) override {

        if (!color.empty()) {
          m_ColorBicycle = color;
          std::cout << "Color SampleBicycle  is " << m_ColorBicycle << std::endl;
          return true;
        }
        else {
          return false;
        }
    }

    bool Price(int price) override {

      if (price > 0) {
        m_PriceBicycle = price;
        std::cout << "Price SampleBicycle  is " << m_PriceBicycle << std::endl;
        return true;
      }
      else {
        return false;
      }
    }
};

class SportBicycle : public IBicycle {

  std::string m_ColorBicycle;
  int m_PriceBicycle;

  public:
   void EwistTheWheel() override {
      std::cout << "Method SportBicycle" << std::endl;
    }

    void Ride() override {
      std::cout << "Method Ride() SportBicycle " << std::endl;
    }

    bool WheelDiameter(float forward, float back) override {
        assert(forward > 0 && back > 0);

        std::cout << "forward Wheel Diameter is " << forward << std::endl;
        std::cout << "back Wheel Diameter is " << back << std::endl;

        return true;
    }

    bool ColorBicycle(std::string color) override {

        if (!color.empty()) {
          m_ColorBicycle = color;
          std::cout << "Color SportBicycle is " << m_ColorBicycle << std::endl;
          return true;
        }
        else {
          return false;
        }
    }

    bool Price(int price) override {

      if (price > 0) {
        m_PriceBicycle = price;
        std::cout << "Price SportBicycle is " << m_PriceBicycle << std::endl;
        return true;
      }
      else {
        return false;
      }
    }
};

class Human  {

  IBicycle *m_Bicycle;

  public: 

    Human(IBicycle &bicucle ) {
      m_Bicycle = &bicucle;
    }

    void RideOn() {
        std::cout << "Крутемо руль" << std::endl;
        m_Bicycle->EwistTheWheel();
        std::cout << "Поехали " << std::endl;
        m_Bicycle->Ride();
    }

    void RideWheelsDia(float forward, float back) {
        m_Bicycle->WheelDiameter(forward, back);
    }

    bool Color(std::string color) {
      return m_Bicycle->ColorBicycle(color);
    }

    bool Price(int price) {
      return m_Bicycle->Price(price);
    }
};

#endif
#include "IBicycle.h"
#include "gmock/gmock.h"
#include "gtest/gtest.h"

using ::testing::AllOf;
using ::testing::Gt;
using ::testing::HasSubstr;
using ::testing::Ne;
using ::testing::Not;
using ::testing::Return;

class MockBicycle : public IBicycle {
 public:
  MOCK_METHOD(void, EwistTheWheel, (), (override));
  MOCK_METHOD(void, Ride, (), (override));
  MOCK_METHOD(bool, WheelDiameter, (float, float), (override));
  MOCK_METHOD(bool, ColorBicycle, (std::string), (override));
  MOCK_METHOD(bool, Price, (int), (override));
};
                 
TEST(HumanTest, Ride) {

  MockBicycle bc;                              

  EXPECT_CALL(bc, Ride())                  
    .Times(2);

  Human painter(bc);                       
  Human painter2(bc);

  painter.RideOn();
  painter2.RideOn();

}

TEST(HumanTest, EwistTheWheel) {

    MockBicycle bc;
    EXPECT_CALL(bc, EwistTheWheel())
        .Times(1);
        
    Human painter(bc);
    painter.RideOn(); 
}

TEST(HumanTest, WheelDiameter) {

    MockBicycle bc;

    EXPECT_CALL(bc, WheelDiameter(testing::_, 20.0))
      .Times(1)
      .WillRepeatedly(Return(true));

    Human painter(bc);
    painter.RideWheelsDia(19.0, 20.0);
}

TEST(HumanTest, Color) {

    MockBicycle bc;

    EXPECT_CALL(bc, ColorBicycle(testing::StrEq("red")))
      .Times(1)
      .WillRepeatedly(Return(true));
      
      Human painter(bc);
      painter.Color("red");
}

TEST(HumanTest, Price) {

    MockBicycle bc;

    EXPECT_CALL(bc, Price(testing::An<int>()))
      .Times(1)
      .WillRepeatedly(Return(true));

       Human painter(bc);
       painter.Price(100);
}
#include "IBicycle.h"
#include "gmock/gmock.h"
#include "gtest/gtest.h"

class MockBicycle : public IBicycle {
 public:
  MOCK_METHOD(void, EwistTheWheel, (), (override));
  MOCK_METHOD(void, Ride, (), (override));
  MOCK_METHOD(bool, WheelDiameter, (float forward, float back), (override));

};
                 
TEST(HumanTest, Ride) {

  MockBicycle bc;                              

  EXPECT_CALL(bc, Ride())                  
    .Times(2);

  Human painter;                       
  Human painter2;

  painter.RideOn(bc);
//   painter2.RideOn(bc);

}

TEST(HumanTest, EwistTheWheel) {

    MockBicycle bc;
    EXPECT_CALL(bc, EwistTheWheel())
        .Times(1);
        
    Human painter;
    painter.RideOn(bc); 
}

using ::testing::Return;

TEST(HumanTest, WheelDiameter) {

    MockBicycle bc;

    EXPECT_CALL(bc, WheelDiameter(
     testing::AllOf(
        (testing::_, 20.0),
        (testing::A<float>(), testing::A<float>()))))
    .Times(1)
    .WillRepeatedly(Return(true));

    Human painter;
    painter.RideWheelsDia(bc, 19.0, 20.0);
}
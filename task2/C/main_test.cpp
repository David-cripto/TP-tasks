#include "gtest/gtest.h"
#include "B/lib.h"
#include "A/index.h"

TEST (tests1, ZeroAndNegativeNos) { 
    ASSERT_EQ (0, sum (0, 0));
}

TEST (tests2, ii) { 
    ASSERT_EQ (5, a);
    ASSERT_EQ (5, b);
}


 
int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}

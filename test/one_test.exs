defmodule OneTest do
  use ExUnit.Case

  test "find whether n is divisible by 5 AND 3" do
    assert One.multiple_of_3_5?(30) == true
  end

  test "sums all elements in the list" do
      assert One.sum_list([1,2,3,4]) == 10
  end

  test "find all multiple m of 3 or 5 where m < 10" do
      assert One.find_all_multiples(10) == [3,5,6,9]
  end
end

defmodule ListLengthTest do
  use ExUnit.Case

  describe "call/1" do
    test "should return the length of list" do
      list = [1,2,3,4,5]

      response = ListLength.call(list)

      expected_response = 5

      assert response == expected_response
    end
  end

end

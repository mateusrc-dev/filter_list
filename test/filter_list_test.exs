defmodule FilterListTest do
  use ExUnit.Case

  describe "call/1" do
    test "return the list filtered" do
      list = ["1", "2", "mateus", "6", "teresina", "3"]

      response = FilterList.call(list)

      expected_response = [1, 3]

      assert response == expected_response
    end
  end
end

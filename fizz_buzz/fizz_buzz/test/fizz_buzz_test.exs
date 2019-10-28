defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  test "returns an error when params are not integers" do
    result_1 = FizzBuzz.generate_sequence("1", "5")
    expected = {:error, "Invalid params"}

    assert result_1 == expected

    result_1 = FizzBuzz.generate_sequence("1", 5)
    assert result_1 == expected

    result_1 = FizzBuzz.generate_sequence(false, 5)
    assert result_1 == expected
  end

  test "returns a numeric sequence defined by arguments limit" do
    result = FizzBuzz.generate_sequence(1, 5)

    assert result == {:ok, [1, 2, 3, 4, 5]}
  end
end

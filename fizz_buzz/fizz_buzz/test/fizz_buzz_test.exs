defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  test "returns a numeric sequence defined by arguments limit" do
    result = FizzBuzz.generate_sequence(1, 2)

    assert result == [1, 2]
  end
end

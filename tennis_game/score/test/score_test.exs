defmodule ScoreTest do
  use ExUnit.Case
  doctest Score

  test "greets the world" do
    assert Score.hello() == :world
  end

  test "inital state from game" do
    game = []

    Score.process_score(game) == %{
      player_1: "0",
      player_2: "0"
    }
  end
end

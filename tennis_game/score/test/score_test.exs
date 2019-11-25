defmodule ScoreTest do
  use ExUnit.Case
  doctest Score

  test "greets the world" do
    assert Score.hello() == :world
  end

  test "if the started game have 2 players with both 0 score" do
    game = Game.new()
  end
end

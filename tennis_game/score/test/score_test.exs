defmodule ScoreTest do
  use ExUnit.Case
  doctest Score

  test "initial state from game" do
    game = []

    assert Score.process_score(game) == %{
             player_1: "0",
             player_2: "0"
           }
  end

  test "game with one score" do
    game = [:player_1]

    assert Score.process_score(game) == %{
             player_1: "15",
             player_2: "0"
           }
  end

  test "game with two scores" do
    game = [:player_1, :player_1]

    assert Score.process_score(game) == %{
             player_1: "30",
             player_2: "0"
           }
  end
end

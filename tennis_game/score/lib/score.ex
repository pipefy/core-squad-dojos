defmodule Score do
  def process_score(game) do
    process_one_score(game, %{
      player_1: "0",
      player_2: "0"
    })
  end

  defp process_one_score([], status), do: status

  defp process_one_score([player | tail] = players, status) do
    Enum.reduce(players, status, fn player, state ->
      cond do
        player == :player_1 ->
          new_score = calc_new_score(state[:player_1])

          status |> Map.put(:player_1, new_score)
      end
    end)
  end

  defp calc_new_score(previous_score) do
    cond do
      "15" -> "30"
    end
  end
end

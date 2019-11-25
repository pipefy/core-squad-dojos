defmodule Score do
  def process_score(game) do
    process_one_score(game, %{
      player_1: "0",
      player_2: "0"
    })
  end

  defp process_one_score([], status), do: status

  defp process_one_score([player | tail] = players, status) do
    new_status =
      cond do
        player == :player_1 ->
          new_score = calc_new_score(status[:player_1])

          status |> Map.put(:player_1, new_score)
      end

    IO.inspect(new_status)
    process_one_score(tail, new_status)
  end

  defp calc_new_score(previous_score) do
    case previous_score do
      "0" -> "15"
      "15" -> "30"
      "30" -> "40"
    end
  end
end

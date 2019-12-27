defmodule Score do

  def process_score(game) do
    process_score(game, %{
      player_1: "0",
      player_2: "0",
      status: "in-progress"
    })
  end

  defp process_score([], status), do: status

  defp process_score([player | tail], status) do
    case status do
      %{^player => "40"} ->
        %{status | status: "#{player} won"}

      _ ->
        new_score = calc_new_score(status[player])
        new_status = status |> Map.put(player, new_score)

        new_status = 
          case new_status do
            %{player_1: "40", player_2: "40"} ->
              %{new_status | status: "deuce"}
            _ ->
              new_status
          end

        process_score(tail, new_status)
    end
  end

  defp calc_new_score(previous_score) do
    case previous_score do
      "0" -> "15"
      "15" -> "30"
      "30" -> "40"
    end
  end
end

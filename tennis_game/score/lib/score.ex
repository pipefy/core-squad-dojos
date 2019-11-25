defmodule Score do

  def process_score(game) do
    process_one_score(game, %{
      player_1: "0",
      player_2: "0"
    })  
  end
 
  defp process_one_score([], status), do: status
  defp process_one_score([player | tail], status) do
    cond do 
      player == :player_1 -> 
        new_score = "15" #calc_new_score(status[:player_1])
        status |> Map.put(:player_1, new_score)
    end
  end
end

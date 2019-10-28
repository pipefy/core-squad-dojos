defmodule FizzBuzz do
  def generate_sequence(num_start, num_end) when is_integer(num_start) and is_integer(num_end) do
    {:ok, Enum.to_list(num_start..num_end)}
  end

  def generate_sequence(_num_start, _num_end) do
    {:error, "Invalid params"}
  end
end

defmodule WordCount do
  def count(words) when is_list(words) do
    Enum.reduce(words, %{}, &update_count/2)
  end

  def count(sentence) do
    sentence
    |> String.split
    |> count
  end

  def update_count(word, acc) do
    Map.update acc, String.to_atom(word), 1, &(&1 + 1)
  end
end

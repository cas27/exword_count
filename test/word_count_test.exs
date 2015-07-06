defmodule WordCountTest do
  use ExUnit.Case, async: true

  test "single word sentence" do
    assert WordCount.count("hey") == %{hey: 1}
  end

  test "two different words" do
    assert WordCount.count("hey man") == %{hey: 1, man: 1}
  end

  test "same word twice" do
    assert WordCount.count("hey man hey") == %{hey: 2, man: 1}
  end
end

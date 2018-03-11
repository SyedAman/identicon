defmodule Identicon do
  def string_to_hash_list(string_to_encode) do
    :crypto.hash(:md5, string_to_encode)
    |> :binary.bin_to_list
  end

  def string_to_identicon(string_to_convert) do
    string_to_convert
    |> string_to_hash_list
  end
end

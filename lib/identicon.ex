defmodule Identicon do
  def string_to_hex_list(string_to_encode) do
    :crypto.hash(:md5, string_to_encode)
    |> :binary.bin_to_list
  end

  def form_image_from_hex_list(hex_list) do
    %Identicon.Image{hex: hex_list}
  end

  def generate_box_color(%Identicon.Image{hex: [r, g, b | _tail]} = image) do
    %Identicon.Image{image | colors: {r, g, b}}
  end

  def string_to_identicon(string_to_convert) do
    string_to_convert
    |> string_to_hex_list
    |> form_image_from_hex_list
    |> generate_box_color
  end
end

defmodule Identicon do
  def create_hex_list(string_to_encode) do
    :crypto.hash(:md5, string_to_encode)
    |> :binary.bin_to_list
  end

  def build_image(hex_list) do
    %Identicon.Image{hex: hex_list}
  end

  def generate_box_color(%Identicon.Image{hex: [r, g, b | _tail]} = image) do
    %Identicon.Image{image | colors: {r, g, b}}
  end

  def mirror_row([column1, column2 | _tail] = row) do
    row ++ [column2,  column1]
  end

  def build_grid(%Identicon.Image{hex: hex_list} = image) do
    grid_rows = hex_list
    |> Enum.chunk(3)
    |> Enum.map(&mirror_row/1)
    |> List.flatten
    |> Enum.with_index 

    %Identicon.Image{image | grid: grid_rows}
  end

  def string_to_identicon(string_to_convert) do
    string_to_convert
    |> create_hex_list
    |> build_image
    |> generate_box_color
    |> build_grid
  end
end

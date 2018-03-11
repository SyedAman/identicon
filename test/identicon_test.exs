defmodule IdenticonTest do
  use ExUnit.Case
  doctest Identicon

  # test "should convert a string to an identicon" do
    # Identicon.string_to_identicon('syed')
  # end

  test "should consistently generate the same identicon for the same string" do
    first_identicon = Identicon.string_to_identicon('syed')
    second_identicon = Identicon.string_to_identicon('syed')

    assert first_identicon == second_identicon
  end
end

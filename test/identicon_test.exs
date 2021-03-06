defmodule IdenticonTest do
  use ExUnit.Case
  doctest Identicon

  test "should generate an identicon from a string" do
    # Identicon.string_to_identicon('syed')
  end

  test "should consistently generate the same identicon for the same string" do
    first_identicon = Identicon.string_to_identicon('syed')
    second_identicon = Identicon.string_to_identicon('syed')

    assert first_identicon == second_identicon
  end

  test "should generate an identicon that mirrors columns 1 and 2 with columns
  4 and 5" do
  end

  test "should generate an identicon that is 5 boxes long and 5 boxes wide" do
  end

  test "should generate an identicon that has colored boxes which correspond to
  even hash values" do
  end

  test "should generate an identicon that has white boxes which correspond to
  odd hash values" do
  end

  test "should generate an identicon where all colored boxes have the same
  color" do
  end
end

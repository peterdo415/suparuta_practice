require 'minitest/autorun'
require_relative '../janken.rb'

class JankenTest < Minitest::Test
  def test_janken
    assert_equal '1本勝負' , janken_count
  end
end
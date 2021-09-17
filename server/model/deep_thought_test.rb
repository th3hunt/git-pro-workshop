require 'minitest/autorun'
require_relative './deep_thought'

class DeepThoughtTest < Minitest::Test
  def test_ask_returns_an_answer
    answer = DeepThought.new
    assert answer.ask("the answer to life the universe and everything") == "42"
  end
end

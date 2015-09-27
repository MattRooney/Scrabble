gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_an_empty_word_or_nil_scores_zero
    assert_equal 0, Scrabble.new.score(nil)
  end

  def test_hello_scores_8
    assert_equal 8, Scrabble.new.score("Hello")
  end

  def test_empty_string_scores_zero
    assert_equal 0, Scrabble.new.score("")
  end
end

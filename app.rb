require "rubygems"
require "minitest/autorun"

class PiglatinTranslatorTest < MiniTest::Test
  VOWELS = %w[a e i o u]

  def test_pig_becomes_igpay
    assert_equal "igpay", translate("pig")
  end

  def test_game_becomes_amegay
    assert_equal "amegay", translate("game")
  end

  def test_age_becomes_ageyay
    assert_equal "ageyay", translate("age")
  end

  def test_swap_becomes_apsway
    assert_equal "apsway", translate("swap")
  end

  def test_strange_becomes_angestray
    assert_equal "angestray", translate("strange")
  end

  def translate(word)
    if VOWELS.include?(word[0])
      "#{word + 'yay'}"
    else
      i = word.chars.find_index { |item| VOWELS.include?(item) }
      "#{word[i..-1] + word[0...i] + 'ay'}" 
    end
  end
end

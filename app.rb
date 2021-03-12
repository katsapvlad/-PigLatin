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

  def test_empty_box_becomes_emptyyay_oxbay
    assert_equal "emptyyay oxbay", translate("empty box")
  end

  def test_one_more_empty_box_becomes_oneyay_oremay_emptyyay_oxbay
    assert_equal "oneyay oremay emptyyay oxbay", translate("one more empty box")
  end

  def translate(str)
    str = str.split(' ')
    final_str = ''
    str.each do |word|
      if VOWELS.include?(word[0])
        final_str += "#{word + 'yay'}" + ' '
      else
        i = word.chars.find_index { |item| VOWELS.include?(item) }
        final_str += "#{word[i..-1] + word[0...i] + 'ay'}" + ' '
      end
    end
    final_str.strip
  end
end

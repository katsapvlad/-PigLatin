require "rubygems"
require "minitest/autorun"

class PiglatinTranslatorTest < MiniTest::Test
  ARR = ['a','e','i','o','u'] # Please have a look at ```%w()``` syntax in ruby. Also let's rename constant to VOWELS. Please add a new line after constant.
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
    if ARR.include?(word[0])
      "#{word + 'yay'}"
    else
      i = word.chars.find_index {|item| ARR.include?(item)} # Please have a look at ruby styleguids https://github.com/rubocop/ruby-style-guide#spaces-braces
      "#{word[i..-1] + word[0...i] + 'ay'}" 
    end
  end
end

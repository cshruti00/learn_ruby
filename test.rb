require "test/unit"
require "./testCode"

$cases = TestCode.new()

class TestTheCode < Test::Unit::TestCase
  def test_fibonacci_finds_the_nth_fibonacci_number
    assert_equal(0,($cases.fibonacci 1))
  	assert_equal(1,($cases.fibonacci 2))
  	assert_equal(1,($cases.fibonacci 3))
  	assert_equal(3,($cases.fibonacci 5))
  	assert_equal(5,($cases.fibonacci 6))
  end

  def test_fibonacci_returns_undefined_for_negative_numbers
  	assert_equal(nil,($cases.fibonacci -1))
  	assert_equal(nil,($cases.fibonacci -5))
  end

  def test_fibonacci_returns_undefined_for_decimal_numbers
  	assert_equal(nil,($cases.fibonacci -1.8))
  	assert_equal(nil,($cases.fibonacci 5.85))
  end

  def test_readBinary_reads_numbers_as_binary
  	assert_equal(0,($cases.readBinary 0))
  	assert_equal(1,($cases.readBinary 1))
  	assert_equal(2,($cases.readBinary 10))
  	assert_equal(9,($cases.readBinary 1001))
  	assert_equal(255,($cases.readBinary 11111111))
  end

  def test_readBinary_reads_text_as_binary
  	assert_equal(0,($cases.readBinary '0'))
  	assert_equal(1,($cases.readBinary '1'))
  	assert_equal(2,($cases.readBinary '10'))
  	assert_equal(9,($cases.readBinary '1001'))
  	assert_equal(255,($cases.readBinary '11111111'))
  end

  def test_readOctal_reads_numbers_as_octal
  	assert_equal(0,($cases.readOctal 0))
  	assert_equal(1,($cases.readOctal 1))
  	assert_equal(8,($cases.readOctal 10))
  	assert_equal(513,($cases.readOctal 1001))
  	assert_equal(299593,($cases.readOctal 1111111))
  end

  def test_readOctal_reads_text_as_octal
    assert_equal(0,($cases.readOctal '0'))
    assert_equal(1,($cases.readOctal '1'))
    assert_equal(8,($cases.readOctal '10'))
    assert_equal(513,($cases.readOctal '1001'))
    assert_equal(299593,($cases.readOctal '1111111'))
  end

  def test_reverseText_reverses_given_text
  	@x = "hello.";
  	@y = ".olleh";
  	assert_equal(($cases.reverseText @x),@y);
  end


  def test_reverseText_reverses_given_text_with_space
  	@x = "hello. hello.";
  	@y = ".olleh .olleh";
  	assert_equal(($cases.reverseText @x),@y);
  end

  def test_reverseText_reverses_different_words_with_spaces
    @x = "hello. ola";
  	@y = "alo .olleh";
  	assert_equal(($cases.reverseText @x),@y);
  end

  def test_getVowelCount_gives_the_count_of_vowels
  	assert_equal(($cases.getVowelCount "morning"),2);
  	assert_equal(($cases.getVowelCount "cooling"),3);
  	assert_equal(($cases.getVowelCount "i am"),2);
  end

  def test_getVowelCount_gets_the_count_of_vowels_with_capital_letters
  	assert_equal(($cases.getVowelCount "Owl"),1);
  	assert_equal(($cases.getVowelCount "cOOling"),3);
  	assert_equal(($cases.getVowelCount "I am not"),3);
  end

  def test_tidyText_removes_extra_spaces_between_words
  	@x = 'The  world    is a very    wide space.  ';
  	@y = 'The world is a very wide space.';
  	assert_equal(($cases.tidyText @x),@y);
  end

  def test_reverseWords_reverses_words_in_sentance
  	@x = "The world is a very wide space. Or is it not?";
  	@y = "ehT dlrow si a yrev ediw .ecaps rO si ti ?ton";
  	assert_equal(($cases.reverseWords @x),@y);
  end

  def test_welcome_responds_with_hello_text_for_text
  	assert_equal("hello text", ($cases.welcome 'hmm'));
  	assert_equal("hello text", ($cases.welcome 'Here I am'));
  	assert_equal("hello text", ($cases.welcome '42'));
  	assert_equal("hello text", ($cases.welcome ''));
  end

  def test_welcome_responds_with_hey_count_for_numbers
  	assert_equal('hey count', ($cases.welcome 2));
  	assert_equal('hey count', ($cases.welcome 420));
  	assert_equal('hey count', ($cases.welcome 0));
  	assert_equal('hey count', ($cases.welcome -25));
  end

  def test_welcome_responds_with_hey_decimal_for_decimal_numbers
  	assert_equal('hey decimal', ($cases.welcome 2.1));
  	assert_equal('hey decimal', ($cases.welcome 420.45));
  	assert_equal('hey decimal', ($cases.welcome 0.1));
  	assert_equal('hey decimal', ($cases.welcome -25.01));
  end

  def test_welcome_responds_with_hey_dont_count_for_bad_calculation
  	assert_equal('hey dont count',($cases.welcome 0/'a'));
  	assert_equal('hey dont count',($cases.welcome 'a' * 0));
  end
end

# 0,1,1,2,3,5

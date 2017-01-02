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
end

# 0,1,1,2,3,5

require "minitest/autorun"
require_relative "lab"

class LabTest < MiniTest::Test
  def setup
    @lab = Lab.new
  end

  def test_less_than_zero_returns_true_when_less_than_zero
    # arrange

    # act
    result = @lab.less_than_zero?(-1)

    # assert
    # assert result
    assert_equal true, result
  end

  def test_less_than_zero_returns_false_when_not_less_than_zero
    result = @lab.less_than_zero?(0)

    assert_equal false, result
  end

  def test_less_than_zero_returns_false_when_positive
    result = @lab.less_than_zero?(1)

    assert_equal false, result
  end

  def test_is_zero_returns_true_when_is_zero
    result = @lab.is_zero?(0)

    assert_equal true, result
  end

  def test_is_zero_returns_false_when_positive
    result = @lab.is_zero?(1)

    assert_equal false, result
  end

  def test_is_zero_returns_false_when_negative
    result = @lab.is_zero?(-1)

    assert_equal false, result
  end

  def test_change_name_updates_name
    @lab.change_name("Dexter's Lab")
    result = @lab.name

    assert_equal("Dexter's Lab", result)
  end

  def test_area_returns_area
    result = @lab.area

    assert_equal(200, result)
  end
end

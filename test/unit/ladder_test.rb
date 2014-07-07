require File.expand_path(File.dirname(__FILE__) + '/../test_helper')
require "custom_field/ladder"
class LadderTest < Test::Unit::TestCase
  def setup
    @ladder=CustomField::Ladder.build "TestLadder"
    @ladder.item "TestItem"
  end

  def test_should_have_a_ladder_of_name_is_testladder
    assert_equal "TestLadder",@ladder.name
  end

  def test_should_have_a_item
    assert_equal 1,@ladder.items
  end
end

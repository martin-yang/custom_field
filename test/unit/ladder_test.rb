require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class LadderTest < Test::Unit::TestCase
  def setup
    @ladder=CustomField::Ladder.build "TestLadder"
  end

  def test_should_have_a_ladder_of_name_is_testladder
    assert_equal "TestLadder",@ladder.name
  end
end

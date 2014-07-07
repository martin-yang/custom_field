require File.expand_path(File.dirname(__FILE__) + '/../test_helper')
require "custom_field/ladder"
require "custom_field/item"
require "custom_field/template"
class ItemTest < Test::Unit::TestCase
  def setup
    @ladder=CustomField::Ladder.build "TestLadder"
    @ladder.item "TestItem"
    @item=@ladder.items.first
    @item.template "one template","path"
  end

  def test_should_have_a_template
    assert_equal 1,@item.templates.size
  end

  def test_should_have_name_and_path_in_template
    template=@item.templates.first
    assert_equal "one template",template.name
    assert_equal "path",template.path
  end
end

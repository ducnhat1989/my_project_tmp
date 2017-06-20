require "test_helper"

class ToDoTest < ActiveSupport::TestCase
  test "should not save to_do without title" do
    to_do = ToDo.new
    assert_not to_do.save    
  end

  test "should not save to_do with title has gt 255 chars" do
    title_256_char = "a" * 256
    to_do = ToDo.new title: title_256_char
    assert_not to_do.save
  end

  test "should save to_do with title lt 255 chars" do
    title_255_char = "a" * 255
    to_do = ToDo.new title: title_255_char
    assert to_do.save
  end

  test "status should be pending when save to_do" do
    to_do = ToDo.new title: "title"
    to_do.save
    assert_equal to_do.status, "pending"
  end
end

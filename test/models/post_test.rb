require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @post = Post.new(title: "飲み会", memo: "IN磯丸水産")
  end
  test "email should not be too long" do
    @post.memo = "a" * 141
    assert_not @post.valid?
  end
end

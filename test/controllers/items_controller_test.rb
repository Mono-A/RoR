require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "get index test" do
    get items_url
    assert_response :success
  end
  test "regit fixture test" do#should be success
    @item = items(:fixt1)
    assert(@item.save)
  end
  test "regit fixture2 test" do#also should be success
    @item = items(:fixt2)
    assert(@item.save)
  end
  test "regit fixture3 test" do#failures pls
    @item =items(:fixt3)
    assert(@item.save)
  end
end

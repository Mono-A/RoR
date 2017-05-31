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
  test "regit fixture2 test" do#failures pls
    @item = items(:fixt2)
    assert(@item.save)
  end
  test "regit fixture3 test" do#also failures pls
    @item =items(:fixt3)
    @item.save
    assert @item.valid?
  end
  test "regit fixture4 test" do #this will be success
    @item = items(:fixt4)
    assert(@item.save)
  end
  test "regit fixture5 test" do #also
    @item1 = items(:fixt5)
    @item2 = items(:fixt1)
    @item1.save
    @item2.save
    assert @item2.invalid?
  end
  test "sidebar checker" do
    
  end
end

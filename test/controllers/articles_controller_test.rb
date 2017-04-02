require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  test "index" do
    5.times { FactoryGirl.create(:article) }
    get :index
    assert_response :success
    assert_equal 5, assigns(:articles).count
  end

  test "show" do
    article = FactoryGirl.create(:article, expired_at: nil)
    get :show, id: article
    assert_response :success
  end

  test "new" do
    get :new
    assert_respose :success
  end

  test "edit" do
    article = FactroyGirl.create(:article)
    get :edit, id: article
    assert_respose :success
  end

end

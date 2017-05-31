require 'test_helper'
require 'integration_test_helper'

class ManageArticlesTest < ActionDispatch::IntegrationTest
  include IntegrationTestHelper

  test "add an article" do
    login_as("taro")
    get "/articles/new"
    assert_response :success

    post "/articles",
        article: FactoryGirl.attributes_for(:article, title: "")
    assert_template "new"
    assert_select "h3" , "エラーがあります。"

    post "/articles",
        article: FactoryGirl.attributes_for(:article, title: "テスト記事")
    assert_redirected_to assigns(:article)
    follow_redirect!
    assert_select "h1", "テスト記事"
  end
end

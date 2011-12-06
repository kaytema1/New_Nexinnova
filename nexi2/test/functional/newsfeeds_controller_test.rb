require 'test_helper'

class NewsfeedsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Newsfeed.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Newsfeed.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Newsfeed.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to newsfeed_url(assigns(:newsfeed))
  end

  def test_edit
    get :edit, :id => Newsfeed.first
    assert_template 'edit'
  end

  def test_update_invalid
    Newsfeed.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Newsfeed.first
    assert_template 'edit'
  end

  def test_update_valid
    Newsfeed.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Newsfeed.first
    assert_redirected_to newsfeed_url(assigns(:newsfeed))
  end

  def test_destroy
    newsfeed = Newsfeed.first
    delete :destroy, :id => newsfeed
    assert_redirected_to newsfeeds_url
    assert !Newsfeed.exists?(newsfeed.id)
  end
end

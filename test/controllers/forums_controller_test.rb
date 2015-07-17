require 'test_helper'

class ForumsControllerTest < ActionController::TestCase
  setup do
    @user = User.create(name: 'test', email: 'test@test.com',
                    password: 'password', password_confirmation: 'password'
                    )
    @forum = Forum.create(topic: 'test_topic', user_id: @user.id)
    @post  = Post.create(forum_id: @forum.id, user_id: @user.id,
                           title: 'test_title', body: 'test_body')
    @request.env["devise.mapping"] = Devise.mappings[:user]
    @request.env["HTTP_REFERER"]   = 'http://localhost:3000'
    @controller.stubs(:current_user).returns(@user)
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forum" do
    assert_difference('Forum.count') do
      post :create, { '/forums/new' => { topic: 'test_topic' },
                    user_id: @user.id }
    end

    assert_response :redirect
  end

  test "should show forum" do
    get :show, id: @forum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forum
    assert_response :success
  end

  test "should update forum" do
    patch :update, id: @forum, "/forums/new" => { topic: @forum.topic, user_id: @forum.user_id }
    assert_redirected_to forum_path(assigns(:forum))
  end

  test "should destroy forum" do
    assert_difference('Forum.count', -1) do
      delete :destroy, id: @forum
    end

    assert_redirected_to forums_path
  end
end

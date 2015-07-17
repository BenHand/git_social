require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @user = User.create(name: 'test', email: 'test@test.com',
                    password: 'password', password_confirmation: 'password'
                    )
    @forum = Forum.create(topic: 'test_topic', user_id: @user.id)
    @post  = Post.create(forum_id: @forum.id, user_id: @user.id,
                           title: 'test_title', body: 'test_body')
    @comment = Comment.create(post_id: @post.id, user_id: @user.id, body: 'test_body')
    @request.env["devise.mapping"] = Devise.mappings[:user]
    @request.env["HTTP_REFERER"]   = 'http://localhost:3000'
    @controller.stubs(:current_user).returns(@user)
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, { post: { body: 'testing_body', title: 'testing_title' },
                  forum_id: @forum.id,
                   user_id: @user.id }
    end

    assert_response :redirect
  end

  test "should show post" do
    get :show, id: @post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should update post" do
    patch :update, id: @post, post: { body: @post.body, forum_id: @post.forum_id, title: @post.title, user_id: @post.user_id }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end
end

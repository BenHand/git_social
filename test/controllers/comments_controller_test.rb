require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
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
    assert_not_nil assigns(:comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, { comment: { body: 'testing_body'},
                     forum_id: @forum.id,
                      post_id: @post.id,
                      user_id: @user.id }
    end
    assert_response :redirect
  end

  test "should show comment" do
    get :show, id: @comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment
    assert_response :success
  end

  test "should update comment" do
    patch :update, id: @comment, comment: { body: @comment.body, post_id: @comment.post_id, user_id: @comment.user_id }
    assert_redirected_to comment_path(assigns(:comment))
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete :destroy, id: @comment
    end

    assert_redirected_to comments_path
  end
end

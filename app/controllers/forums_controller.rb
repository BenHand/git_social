class ForumsController < ApplicationController
  before_action :set_forum, only: [:show, :edit, :update, :destroy]

  def index
    @forums = Forum.all.order(created_at: :desc)
  end

  def show
    @forum = Forum.find(params[:id])
    @comment = Comment.new
    @post = Post.new
  end

  def new
    @forum = Forum.new
  end

  def edit
  end

  def create
    @forum = Forum.new(forum_params)
    @forum.user_id = current_user.id
    if @forum.save
      redirect_to @forum, notice: 'Forum was successfully created.'
    else
      render :new
    end
  end

  def update
    if @forum.update(forum_params)
      redirect_to @forum, notice: 'Forum was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @forum.destroy
    redirect_to forums_url, notice: 'Forum was successfully destroyed.'
  end

  private

    def set_forum
      @forum = Forum.find(params[:id])
    end

    def forum_params
      params.require("/forums/new").permit(:topic, :user_id)
    end
end

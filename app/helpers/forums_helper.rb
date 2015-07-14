module ForumsHelper

  def total_comments(posts)
    comments = 0
    posts.each do |post|
      comments += post.comments.count
    end
    comments
  end

end

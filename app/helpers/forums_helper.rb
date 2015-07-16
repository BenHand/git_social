module ForumsHelper

  def total_comments(input)
    comments = 0
    input.each do |post|
      comments += post.comments.count
    end
    comments
  end

end

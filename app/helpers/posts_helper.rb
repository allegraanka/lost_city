module PostsHelper

  def posts_display
    @posts.each do |post|
      image_tag "#{post.image.url(:medium)}"
      content_tag :h3, "#{post.caption}"
    end
  end

end

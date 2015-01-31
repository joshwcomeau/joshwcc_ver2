module BlogPostsHelper

  def add_background_style_if_image(p)
    "style=\"background-image: url('#{p.images.first.src}')\"".html_safe if p.images.any?
  end
end

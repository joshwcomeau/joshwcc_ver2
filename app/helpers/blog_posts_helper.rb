module BlogPostsHelper
  MINIMUM_CHARS_FOR_PREVIEW = 2000

  # What makes a perfect snippet? I think it should be the first N characters, rounded up to the nearest paragraph.
  def display_snippet(content)
    content = display_full(content)

    # If our entire post fits in the snippet, just parse the HTML and return it.
    return content if content.length <= MINIMUM_CHARS_FOR_PREVIEW
      

    first_part = content[0...MINIMUM_CHARS_FOR_PREVIEW]
    remainder  = content[MINIMUM_CHARS_FOR_PREVIEW..-1]
    (first_part + remainder.split("</p>").first + "</p>")

  end

  def display_full(content)
    simple_format(content, {}, sanitize: false)
  end
end

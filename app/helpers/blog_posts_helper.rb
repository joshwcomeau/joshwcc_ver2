module BlogPostsHelper
  MINIMUM_CHARS_FOR_PREVIEW = 30
  def prepare_for_display(content)
    # Shortcode processes our file, and then we turn '\n's into 'br's and 'p's.
    content = Shortcode.process(content)
    simple_format(content)
  end

  def display_snippet(content)
    content = prepare_for_display(content)

    # What makes a perfect snippet? I think it should be the first N characters, rounded up to the nearest paragraph.
    first_part = content[0...MINIMUM_CHARS_FOR_PREVIEW]
    remainder  = content[MINIMUM_CHARS_FOR_PREVIEW..-1]

    (first_part + remainder.split("</p>").first + "</p>").html_safe

  end

  def display_full(content)
    prepare_for_display(content).html_safe
  end
end

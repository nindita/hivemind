# Check out the options here:
# https://github.com/vmg/redcarpet

class CodeRayify < Redcarpet::Render::HTML
  def block_code(code, language)
    CodeRay.scan(code, language).div
  end
end

module ApplicationHelper
  def markdown(text)
    render_options = {
      filter_html: true,
      no_images: true,
      no_styles: true,
      safe_links_only: true,
      hard_wrap: true,
      prettify: true
    }
    markdown_options = {
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      autolink: true,
      strikethrough: true,
      space_after_headers: true,
      superscript: true,
      highlight: true,
      quote: true
    }
    renderer = CodeRayify.new(render_options)
    markdown = Redcarpet::Markdown.new(renderer, markdown_options)
    return markdown.render(text).html_safe
  end
end

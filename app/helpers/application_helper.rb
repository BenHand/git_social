module ApplicationHelper

  class HTMLwithPygments < Redcarpet::Render::HTML

    def block_code(code, language)
      Pygments.highlight(code, lexer: language)
    end

  end

  def markdown(content)
    renderer = HTMLwithPygments.new(hard_wrap: true, filter_html: true)
    options  = {
                autolink: true,
                space_after_headers: true,
                fenced_code_blocks: true,
                underline: true,
                highlight: true,
                footnotes: true,
                gh_blockcode: true,
                no_intra_emphasis: true
               }
    Redcarpet::Markdown.new(renderer, options).render(content).html_safe
  end

end

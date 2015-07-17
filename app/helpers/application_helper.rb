module ApplicationHelper

  # class HTMLwithPygments < Redcarpet::Render::HTML

  #   def block_code(code, language)
  #     Pygments.highlight(code, lexer: language)
  #   end

  # end

  # def markdown(content)
  #   renderer = HTMLwithPygments.new(hard_wrap: true, filter_html: true)
  #   options  = {
  #               autolink: true,
  #               space_after_headers: true,
  #               fenced_code_blocks: true,
  #               underline: true,
  #               highlight: true,
  #               footnotes: true,
  #               no_intra_emphasis: true
  #              }
  #   Redcarpet::Markdown.new(renderer, options).render(content).html_safe
  # end

  class HTML < Redcarpet::Render::HTML
    include Rouge::Plugins::Redcarpet
  end

  class HTMLWithPants < Redcarpet::Render::HTML
    include Redcarpet::Render::SmartyPants
  end

    def markdown(content)
      @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, {
        autolink:            true,
        space_after_headers: true,
        fenced_code_blocks:  true,
        superscript:         true,
        underline:           true,
        highlight:           true,
        footnotes:           true,
        quote:               true
      })
      @markdown.render(content).html_safe
    end

end

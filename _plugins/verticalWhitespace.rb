module Jekyll
  class VerticalWhitespaceTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
        "<br/><br/><br/><br/>"
    end
  end
end

Liquid::Template.register_tag('verticalWhitespace', Jekyll::VerticalWhitespaceTag)

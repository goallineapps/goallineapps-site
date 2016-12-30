module Jekyll
  class LeadTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
        "<p class=\"lead\">"+@text.strip+"</p>"
    end
  end
end

Liquid::Template.register_tag('lead', Jekyll::LeadTag)

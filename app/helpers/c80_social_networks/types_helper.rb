module C80SocialNetworks
  module TypesHelper

    def type_title_html_str(type)
      "#{draw_awesome_social_icon(type.title, type.awesome_icon_code)} <span class='type_title'>#{type.title}</span>".html_safe
    end

  end
end
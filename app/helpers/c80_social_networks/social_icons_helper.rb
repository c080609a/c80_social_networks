module C80SocialNetworks
  module SocialIconsHelper

    def draw_social_icon(title='social icon',awesome_icon_code='\f004',width=16,height=16)

      render :partial => 'c80_social_networks/social_icon',
             :locals => {
                 title: title,
                 css_style: "content:'#{awesome_icon_code}';width:#{width}px;height:#{height}px;"
             }
    end

  end
end
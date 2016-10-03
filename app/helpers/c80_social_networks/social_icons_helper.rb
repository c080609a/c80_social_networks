module C80SocialNetworks
  module SocialIconsHelper

    def draw_social_icon(title='social icon',awesome_icon_code='fa-heart',width=16,height=16)

      render :partial => 'c80_social_networks/social_icon',
             :locals => {
                 title: title,
                 awesome_icon_code: awesome_icon_code
             }
    end

  end
end
module C80SocialNetworks
  module AwesomeSocialIconsHelper

    def draw_awesome_social_icon(title='social icon',awesome_icon_code='fa-heart')

      render :partial => 'c80_social_networks/awesome_social_icon',
             :locals => {
                 title: title,
                 awesome_icon_code: awesome_icon_code
             }
    end

  end
end
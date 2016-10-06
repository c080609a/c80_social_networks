module C80SocialNetworks
  module LinksHelper

    def render_social_networks_links_list_icons

      links_list = Link.all.ord_asc

      render :partial => 'c80_social_networks/links_list_icons',
             :locals => {
                 links_list: links_list
             }

    end

    def render_social_networks_links_list_images

      links_list = Link.all.ord_asc

      render :partial => 'c80_social_networks/links_list_images',
             :locals => {
                 links_list: links_list
             }

    end

  end
end
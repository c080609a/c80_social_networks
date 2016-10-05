module C80SocialNetworks
  module LinksHelper

    def render_social_networks_links_list

      links_list = Link.all.ord_asc

      render :partial => 'c80_social_networks/links_list',
             :locals => {
                 links_list: links_list
             }

    end

  end
end
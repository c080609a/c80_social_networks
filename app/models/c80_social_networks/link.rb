module C80SocialNetworks
  class Link < ActiveRecord::Base

    has_and_belongs_to_many :types#, :join_table => 'c80_social_networks_links_types'
    scope :ord_asc, -> {order(:ord => :asc)}

    def type_title
      res = ''
      if self.types.count > 0
        res = self.types.first.title
      end
      res
    end

    def type_awesome_icon_code
      res = ''
      if self.types.count > 0
        res = self.types.first.awesome_icon_code
      end
      res
    end

    def type_image_url
      res = ''
      if self.types.count > 0
        if self.types.first.image.present?
          res = self.types.first.image.url
        end
      end
      res
    end

  end
end
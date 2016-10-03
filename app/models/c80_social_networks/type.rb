module C80SocialNetworks
  class Type < ActiveRecord::Base

    before_validation { self.remove_image! if self._delete_image }
    mount_uploader :image, TypeIconUploader
    has_and_belongs_to_many :links#, :join_table => 'c80_social_networks_links_types'

  end
end
module C80SocialNetworks
  class Link < ActiveRecord::Base
    has_and_belongs_to_many :types#, :join_table => 'c80_social_networks_links_types'
  end
end
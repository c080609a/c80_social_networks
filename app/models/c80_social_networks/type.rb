module C80SocialNetworks
  class Type < ActiveRecord::Base

    before_validation { self.remove_image! if self._delete }
    mount_uploader :image, TypeIconUploader

  end
end
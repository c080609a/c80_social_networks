module C80SocialNetworks

  class TypeIconUploader < CarrierWave::Uploader::Base

    include CarrierWave::MiniMagick

    storage :file

    process :resize_to_limit => [100, 100]

    def store_dir
      "uploads/social_networks"
    end

    def filename
      if original_filename
        "icon_#{secure_token(4)}.#{file.extension}"
      end
    end

    protected

    def secure_token(length=16)
      var = :"@#{mounted_as}_secure_token"
      model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.hex(length/2))
    end


  end

end
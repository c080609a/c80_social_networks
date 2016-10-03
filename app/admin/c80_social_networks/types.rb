ActiveAdmin.register C80SocialNetworks::Type, as: 'Type' do

  menu :label => 'Типы соцсетей', # TODO_MY:: название пункта меню перенесести в параметры в базу
       priority: 2,
       # :if => proc {current_admin_user.email == "tz007@mail.ru"},
       parent: 'Социальные сети'# TODO_MY:: название пункта меню перенесести в параметры в базу

  permit_params :title,
                :tag,
                :image,
                :_delete_image,
                :awesome_icon_code

  batch_action :destroy, false
  config.per_page = 100
  config.sort_order = 'id_asc'
  before_filter :skip_sidebar!, :only => :index

  index do
    selectable_column
    column :title do |type|
      "#{draw_social_icon(type.title, type.awesome_icon_code)} <span class='type_title'>#{type.title}</span>".html_safe
    end
    column :tag
    column :awesome_icon_code
    column :image do |type|
      if type.image.present?
        link_to image_tag(type.image), image_path(type.image), target: '_blank'
      end
    end
    actions
  end

  form(:html => {:multipart => true}) do |f|

    f.inputs 'Свойства' do

      f.input :title
      f.input :tag
      f.input :awesome_icon_code
      f.input :image,
              :as => :file,
              :hint => image_tag(f.object.image)
      if f.object.image.present?
        f.input :_delete_image, :as => :boolean, :required => false, :label => 'Удалить картинку'
      end

    end

    f.actions
  end

end
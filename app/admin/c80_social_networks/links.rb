ActiveAdmin.register C80SocialNetworks::Link, as: 'Link' do

  menu :label => 'Ссылки', # TODO_MY:: название пункта меню перенесести в параметры в базу
       priority: 2,
       # :if => proc {current_admin_user.email == "tz007@mail.ru"},
       parent: 'Социальные сети'# TODO_MY:: название пункта меню перенесести в параметры в базу

  permit_params :title,
                :url,
                :ord,
                :type_ids => []

  batch_action :destroy, false
  config.per_page = 100
  config.sort_order = 'id_asc'
  before_filter :skip_sidebar!, :only => :index

  index do
    selectable_column
    column :title
    column :ord
    column :url
    column :type do |link|
      res = ''
      link.types.map do |type|
        res += type_title_html_str(type)
      end
      res.html_safe
    end
    actions
  end

  form(:html => {:multipart => true}) do |f|

    f.inputs 'Свойства' do

      f.input :title
      f.input :ord
      f.input :url
      f.input :types,
              :as => :select,
              :include_blank => false,
              :input_html => {
                  :class => 'selectpicker',
                  'data-size' => "10",
                  'data-width' => '400px',
                  :multiple => false
              }
    end

    f.actions
  end

end
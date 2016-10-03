class C80SocialNetworksCreateTypes < ActiveRecord::Migration
  def change
    create_table :c80_social_networks_types, :options => 'COLLATE=utf8_unicode_ci' do |t|
      t.string :title
      t.string :tag
      t.string :awesome_icon_code # если не задана картинка image - будет использован стандартная иконка из font awesome
      t.string :image             # можно переопределить иконку font awesome
      t.boolean :_delete_image    # картинку можно удалить
      t.timestamps null: false
    end
  end
end

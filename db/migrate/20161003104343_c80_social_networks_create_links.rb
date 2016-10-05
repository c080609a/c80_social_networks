class C80SocialNetworksCreateLinks < ActiveRecord::Migration
  def change
    create_table :c80_social_networks_links, :options => 'COLLATE=utf8_unicode_ci' do |t|
      t.string :title
      t.string :url
      t.string :ord
      t.timestamps null: false
    end
  end
end

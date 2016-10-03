class C80SocialNetworksAddJoinTableLinksTypes < ActiveRecord::Migration
  def change
    create_table :c80_social_networks_links_types, :id => false do |t|
      t.integer :link_id, :null => false
      t.integer :type_id, :null => false
    end

    add_index :c80_social_networks_links_types, [:type_id, :link_id], :unique => true, :name => 'my_index'

  end
end

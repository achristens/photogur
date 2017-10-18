class CreateImagesTags < ActiveRecord::Migration[5.0]
  def change
    create_table :images_tags do |t|
      t.integer :tag_id
      t.integer :image_id
    end
  end
end

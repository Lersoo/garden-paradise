class CreateGardens < ActiveRecord::Migration[6.0]
  def change
    create_table :gardens do |t|
      t.string :image_url
      t.string :name
      t.string :description
      t.integer :surface

      t.timestamps
    end
  end
end

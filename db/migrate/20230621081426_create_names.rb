class CreateNames < ActiveRecord::Migration[6.1]
  def change
    create_table :names do |t|
      t.string :image
      t.float :price

      t.timestamps
    end
  end
end

class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.integer :post_id
      t.integer :category_id

    end
  end
end

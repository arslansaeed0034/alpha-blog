class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
    	t.integer :articles_id
    	t.string :name
    end
  end
end

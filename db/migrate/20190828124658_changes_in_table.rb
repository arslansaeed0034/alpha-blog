class ChangesInTable < ActiveRecord::Migration[6.0]
   def change
   		rename_column :article_categories, :articles_id, :article_id
    	remove_column :categories, :articles_id
    end
end


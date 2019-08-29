class ArticleCategoriesThirldTable < ActiveRecord::Migration[6.0]
  def change
    create_table :article_categories do |t|
    	t.integer :articles_id
    	t.integer :category_id
    end
  end
end

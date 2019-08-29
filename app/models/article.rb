class Article < ActiveRecord::Base
	has_many  :article_categories
	has_many  :categories,through: :article_categories
	belongs_to :user
	validates :title,presence:true
	validates :description,presence:true, length:{minimum:5,maximum:100}
	validates :user_id,presence:true
end
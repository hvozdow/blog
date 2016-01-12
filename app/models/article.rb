class Article < ActiveRecord::Base
    
    has_many :article_categories
    has_many :categories, through: :article_categories
    belongs_to :user
    
    validates :Title, presence: true, length: {minimum: 3, maximum: 50}
    validates :Description, presence: true, length: {minimum: 10, maximum: 300}
    
end

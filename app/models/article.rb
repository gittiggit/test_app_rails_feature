class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:finders, :slugged, :history]   # passing the title to use it in the url

  # def should_generate_new_friendly_id?
  #   new_record?    #Returns true if this object hasn’t been saved yet – that is, a
  #                  # record for the object doesn’t exist in the database yet; otherwise, returns false.
  # end

  belongs_to :user
  has_many :article_categories
	has_many :categories, through: :article_categories
	validates :title, presence: true
	validates :description, presence: true
	validates :user_id, presence: true

  # def to_param
  #   "#{id} #{name}".parameterize
  # end
end	

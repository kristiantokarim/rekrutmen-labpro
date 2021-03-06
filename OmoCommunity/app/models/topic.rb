class Topic < ActiveRecord::Base
    has_many :posts,	dependent: :destroy
    belongs_to :user
    has_many :attachments, dependent: :destroy
    validates :title, presence: true
    #SEARCH
    def self.search(search)
	  where("title LIKE ? OR content LIKE ?", "%#{search}%", "%#{search}%") 
	end
end

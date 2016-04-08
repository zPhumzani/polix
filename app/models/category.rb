class Category < ActiveRecord::Base
  belongs_to :user
  has_many :statuses
  has_many :products, through: :statuses

  def to_s
  	name
  end
end

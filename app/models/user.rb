class User < ActiveRecord::Base
  has_secure_password
  has_many :categories
  has_many :products

  validates :first_name, :last_name, presence: true

#  after_destroy :ensure_an_admin_remains
# private
#   def ensure_an_admin_remains
#     if User.count.zero?
#     	raise "Can't delete last User"
#     end
#   end
  def to_s
  	"#{first_name} #{last_name}"
  end
end

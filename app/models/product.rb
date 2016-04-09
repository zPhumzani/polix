class Product < ActiveRecord::Base
  attr_accessor :file
  #has_attached_file :image, :styles => {medium: "300x300", thumb: "100x100"}
  #validates_attachment 	:image, :presence => true,:content_type => { :content_type => /\Aimage\/.*\Z/ },:size => { :less_than => 1.megabyte }
				
  belongs_to :user

  has_many :statuses
  has_many :categories, through: :statuses

  has_many :line_items
  has_many :orders, through: :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :price, :description, presence: true

  SIZES = ['Small', 'Medium', 'LARGE', 'XLARGE']

  def self.lastest
    Product.order(:updated_at).last 
  end

  def initialize(params={}) 
    @file = params.delete(:file)
    super
    if @file
      self.filename = sanitize_filename(@file.original_filename)
      self.content_type = @file.content_type
      self.file_contents = @file.read
    end
  end

  private
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end
    
    def sanitize_filename(filename)
      return File.basename(filename)
    end
end

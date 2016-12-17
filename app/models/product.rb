class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user
  validates :title,presence: true, length: { minimum: 3, maximum: 50}
  validates :desc, presence: true, length: {minimum: 10, maximum: 1000}
  validates :category_id, presence: true;
  has_attached_file :photo, styles: { large: "600*600>", medium: "300*300>", thumb: "150*150>"}
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end

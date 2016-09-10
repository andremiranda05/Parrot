class Event < ApplicationRecord
  belongs_to :user

  has_one :event_place

  accepts_nested_attributes_for :event_place

  has_attached_file :photo,   styles:
          { large: "600x600>", medium: "300x300>", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
          validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end

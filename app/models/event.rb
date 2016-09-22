class Event < ApplicationRecord
  belongs_to :user
  has_many :attractions ,:dependent => :destroy
  has_one :organizator, :dependent => :destroy

  accepts_nested_attributes_for :attractions, reject_if: :all_blank , allow_destroy: true
  accepts_nested_attributes_for :organizator, reject_if: :all_blank, allow_destroy: true

  has_attached_file :photo,   styles:
          { large: "600x600", medium: "350x350", thumb: "200x200" }, default_url: "/images/:style/missing.png"
          validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  def self.search(query)
    where("nome_evento like ?", "%#{query}%")
  end

  validates_presence_of :nome_evento, message: 'não pode ser deixado em branco'
  validates_presence_of :photo, message: 'não pode ser deixado em branco'
  validates_presence_of :nome_espaco, message: 'não pode ser deixado em branco'
  validates_presence_of :cidade, message: 'não pode ser deixado em branco'
  validates_presence_of :estado, message: 'não pode ser deixado em branco'
  validates_presence_of :logradouro, message: 'não pode ser deixado em branco'
  validates_presence_of :bairro, message: 'não pode ser deixado em branco'

end

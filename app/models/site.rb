class Site < ApplicationRecord
  generate_public_uid generator: PublicUid::Generators::HexStringSecureRandom.new(20)
  before_create :set_color

  belongs_to :color, optional: true

  def to_param
    public_uid
  end

  def set_color
    binding.pry
    self.color_code =  Color.pluck(:code).sample
  end
end

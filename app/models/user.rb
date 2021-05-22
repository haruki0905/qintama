class User < ApplicationRecord
  before_create :set_first_site
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable
  
  def set_first_site
    self.site_id =  Site.find(Site.pluck(:id).sample).id
  end
end
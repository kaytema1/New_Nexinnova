class AdminUser < ActiveRecord::Base
    has_many :tasks
     has_many :news_feeds
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
  :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  after_create { |admin| admin.send_reset_password_instructions }

  def password_required?
    new_record? ? true : super
  end
end

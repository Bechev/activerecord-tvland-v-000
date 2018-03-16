class Actor < ActiveRecord::Base
  has_many :show, through: :character
  has_many :character

  def full_name
  "#{first_name} #{last_name}"
  end

  def list_roles
    self.collect do |actor|
      "#{character.name} - #{character.show.name}"
    end
  end
end

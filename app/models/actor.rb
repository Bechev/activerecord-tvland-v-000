class Actor < ActiveRecord::Base

  has_many :shows, through: :characters
  has_many :characters

  def full_name
  "#{first_name} #{last_name}"
  end

  def list_roles
    self.collect do |actor|
      "#{character.name} - #{character.show.name}"
    end
  end
end

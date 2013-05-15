class Drink < ActiveRecord::Base
  attr_accessible :description, :directions, :glass_id, :image, :name, :variation_description

  has_many :mixes
  has_one :glass

  def spirits 
  	Spirit.where(:id => self.mixes.where(:mixable_type => 'Spirit').map { |m| m.id })
  end



end

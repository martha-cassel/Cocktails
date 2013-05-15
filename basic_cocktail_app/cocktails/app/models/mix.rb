class Mix < ActiveRecord::Base
  attr_accessible :drink_id, :mixable_id, :mixable_type

  belongs_to :mixable, :polymorphic => true
  belongs_to :drink

  
end

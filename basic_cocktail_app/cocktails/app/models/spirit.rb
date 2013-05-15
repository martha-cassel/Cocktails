class Spirit < ActiveRecord::Base
  attr_accessible :name, :type

  has_many :mixes, :as => :mixable

end

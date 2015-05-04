class Recipe < ActiveRecord::Base

  enum :purpose => [ :culinary, :medicinal, :utilitarian, :magical ]

end

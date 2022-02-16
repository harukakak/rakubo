class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '貯金' }
  ]

  include ActiveHash::Associations
  has_many :moneys
end

class Category5 < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '食費' },
    { id: 3, name: '光熱費' },
    { id: 4, name: 'お小遣い' },
    { id: 5, name: '医療費' },
    { id: 6, name: '雑費' },
    { id: 7, name: '交際費' },
    { id: 8, name: '保険料' },
    { id: 9, name: '通信費' },
    { id: 10, name: '交通費' },
    { id: 11, name: '家賃' },
    { id: 12, name: 'その他固定費' }
  ]

  include ActiveHash::Associations
  has_many :moneys
end
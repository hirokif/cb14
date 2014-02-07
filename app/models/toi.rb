class Toi < ActiveRecord::Base
  belongs_to :grp,
  #:class_name => 'Grp',
  :primary_key => 'grp_no',
  :foreign_key => 'grp_no'

  validates :toi_name,
  presence: {message: "入力してください"},
  uniqueness: {message: "同じ項目があります"}

  #ルーティングでresourcesが生成するURLにおけるID以外(grp_no)によるレコード指定
  #def to_param
  #  return toi_no
  #end
  #def self.find(key)
  #  return find_by_toi_no(key)
  #end
end

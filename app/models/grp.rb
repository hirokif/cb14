class Grp < ActiveRecord::Base
  has_many :tois,
  :foreign_key => 'grp_no',
  :order => 'toi_no'

  validates :grp_name,
  presence: {message: "入力してください"},
  uniqueness: {message: "同じ項目があります"}

  #ルーティングでresourcesが生成するURLにおけるID以外(grp_no)によるレコード指定
  def to_param
    return grp_no
  end
  def self.find(key)
    return find_by_grp_no(key)
  end
end

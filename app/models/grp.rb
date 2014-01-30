class Grp < ActiveRecord::Base
	#primary_key設定
	#primary_key :grp_no
  has_many :tois
  validates :grp_name,
  presence: {message: "入力してください"},
  uniqueness: {message: "同じ項目があります"}

  #ルーティングでresourcesが生成するURLにおけるID以外(grp_no)によるレコード指定
  def to_param
    return grp_no.parameterize
  end
  def self.find(key)
    return find_by_grp_no(key)
  end
end

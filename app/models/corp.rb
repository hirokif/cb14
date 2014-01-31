class Corp < ActiveRecord::Base
  
  validates :corp_no,
  presence: {message: "入力してください"},
  uniqueness: {message: "同じ項目があります"}

  #ルーティングでresourcesが生成するURLにおけるID以外(grp_no)によるレコード指定
  def to_param
    return corp_no
  end
  def self.find(key)
    return find_by_corp_no(key)
  end
end

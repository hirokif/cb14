class Toi < ActiveRecord::Base
  #外部キーはidではなくtoi_noに変更
  self.primary_key = :toi_no

  belongs_to :grp,
  #:class_name => 'Grp',
  :primary_key => 'grp_no',
  :foreign_key => 'grp_no'

  has_many :tois,
           :foreign_key => 'toi_no'

  validates :toi_no,
  presence: {message: "入力してください"},
  uniqueness: {message: "同じ番号があります"}

  has_many :rbs,
           :primary_key => 'toi_no',
           :foreign_key => 'toi_no',
           :order => 'rb_no'


  #ルーティングでresourcesが生成するURLにおけるID以外(grp_no)によるレコード指定
  #def to_param
  #  return toi_no
  #end
  #def self.find(key)
  #  return find_by_toi_no(key)
  #end
end
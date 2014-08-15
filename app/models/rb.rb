class Rb < ActiveRecord::Base
  #外部キーはidではなくrb_noに変更
  #self.primary_key = :rb_no

  belongs_to :toi,
  :primary_key => 'toi_no',
  :foreign_key => 'toi_no'

  #has_many :rbs,
  #         :foreign_key => 'tb_no'
end

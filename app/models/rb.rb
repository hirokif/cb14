class Rb < ActiveRecord::Base
  belongs_to :toi,
  :primary_key => 'toi_no',
  :foreign_key => 'toi_no'

  #has_many :rbs,
  #         :foreign_key => 'tb_no'
end

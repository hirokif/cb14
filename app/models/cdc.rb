class Cdc < ActiveRecord::Base
  belongs_to :corp,
  			 :primary_key => 'corp_no',
  			 :foreign_key => 'corp_no'
  belongs_to :toi,
  			 :primary_key => 'toi_no',
  			 :foreign_key => 'toi_no'
end

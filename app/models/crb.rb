class Crb < ActiveRecord::Base
    belongs_to :corp,
  			 :primary_key => 'corp_no',
  			 :foreign_key => 'corp_no'

    belongs_to :rb,
  			 :primary_key => 'rb_no',
  			 :foreign_key => 'rb_no'
end

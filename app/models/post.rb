class Post < ApplicationRecord
  validates :title,{presence: true,length:{maximum:20}}
  validates :memo,length:{maximum:500}
  validates :start,presence: true
  validates :finish, presence: true
  validate  :start_end_check

  def start_end_check
    errors.add(:error, "終了日は、開始日以降の日付としてください。") unless
    self.start <= self.finish
  end

end

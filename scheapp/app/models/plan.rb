class Plan < ApplicationRecord
    validates :title, presence: true
    validates :startday, presence: true
    validates :finday, presence: true
    validate :start_end_check
     def start_end_check
       errors.add(:finday, "は開始日より前の日付は登録できません。") unless
       self.startday <= self.finday 
     end
  
end

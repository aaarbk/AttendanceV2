class Employee < ApplicationRecord
  belongs_to :user
  has_many :shift_assignments
  has_many :shifts, through: :shift_assignments

  def self.with_card(c)
    find_by(card_num: c)
  end

  # FIX!!
  def pending_shift # nil if no pending shift
    s = shifts.ongoing # ongoing shifts ()
    return nil if s.empty?

    s.first.shift_assignments.where(employee_id: id).where(clockin_time: nil).first
  end

  #   def working_on(date)
  #     assigned_dates = shifts.map { |s| s.start_time.to_date } | [shifts.last.end_time.to_date]
  #     assigned_dates.include? date.to_date
  #   end
end

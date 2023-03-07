class ShiftAssignment < ApplicationRecord
  belongs_to :employee
  belongs_to :shift

  # validate :shift_cannot_be_in_the_past # shift cannot being assigned to cannot be in the past
  validate :employee_is_not_already_working_on_date

  def self.create_shift_assignments(shift_ids, employee_ids)
    shift_ids.each do |s_id|
      employee_ids.each do |e_id|
        ShiftAssignment.create(shift_id: s_id, employee_id: e_id)
      end
    end
  end

  private

  # doesn't work for overnight shift! will assign on the same day as ending
  def employee_is_not_already_working_on_date
    # get all dates being worked
    dates_working = employee.shifts.chronological.map { |s| s.start_time.to_date }
    return unless (dates_working.include? shift.start_time.to_date) || (dates_working.include? shift.end_time.to_date)

    errors.add(:employee, "can't already be assigned a shift on the day")
  end
end

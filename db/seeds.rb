# Shift.create!([
#   {start_time: "2023-02-16 19:08:05", end_time: "2023-02-17 03:08:05"},
#   {start_time: "2023-02-18 16:50:54", end_time: "2023-02-18 20:50:54"}
#
# ])

user1 = User.create!(username: 'mashael', password: 'password123', password_confirmation: 'password123')
user2 = User.create!(username: 'hessa', password: 'password123', password_confirmation: 'password123')
user3 = User.create!(username: 'fatima', password: 'password123', password_confirmation: 'password123')
user4 = User.create!(username: 'noor', password: 'password123', password_confirmation: 'password123')

Location.create!([
                   { name: 'AlWaab', address: 'XYZ Street' },
                   { name: 'AlSadd', address: 'ABC Street' }
                 ])

Employee.create!([
                   { card_num: '12345', first_name: 'Mashael', last_name: 'Alemadi', email: 'mashael@example.com', phone: '50082008',
                     role: 1, user_id: user1.id },
                   { card_num: '40534', first_name: 'Hessa', last_name: 'Boday', email: 'hessa@example.com', phone: nil, role: 2,
                     user_id: user2.id },
                   { card_num: '41337', first_name: 'Fatima', last_name: 'AlSafar', email: 'fatima@example.com', phone: nil, role: 3,
                     user_id: user3.id },
                   { card_num: '99999', first_name: 'Noor', last_name: 'AlTamimi', email: 'noor@example.com', phone: nil, role: 1,
                     user_id: user4.id }
                 ])

# ShiftAssignment.create!([
#   {employee_id: 1, shift_id: 1, clockin_time: "2023-02-18 18:57:54", clockout_time: "2023-02-18 18:58:00"},
#   {employee_id: 1, shift_id: 2, clockin_time: "2023-02-16 19:09:02", clockout_time: "2023-02-17 03:09:02"},
#   {employee_id: 2, shift_id: 2, clockin_time: "2023-02-16 20:09:45", clockout_time: "2023-02-17 02:09:45"}
# ])

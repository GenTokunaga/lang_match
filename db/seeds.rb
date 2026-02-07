# 管理者ユーザー
Admin.create!(name: 'admin_user', email: 'test_admin@co.jp', password: 'Password1234!')

# チケット料金マスタデータ
MasTicketPrice.create!(ticket_count: 1, price: 2000)
MasTicketPrice.create!(ticket_count: 3, price: 5000)
MasTicketPrice.create!(ticket_count: 5, price: 7500)

# レッスン枠マスタデータ
MasLessonSlot.create!(start_time: '07:00:00')
MasLessonSlot.create!(start_time: '08:00:00')
MasLessonSlot.create!(start_time: '09:00:00')
MasLessonSlot.create!(start_time: '10:00:00')
MasLessonSlot.create!(start_time: '11:00:00')
MasLessonSlot.create!(start_time: '12:00:00')
MasLessonSlot.create!(start_time: '13:00:00')
MasLessonSlot.create!(start_time: '14:00:00')
MasLessonSlot.create!(start_time: '15:00:00')
MasLessonSlot.create!(start_time: '16:00:00')
MasLessonSlot.create!(start_time: '17:00:00')
MasLessonSlot.create!(start_time: '18:00:00')
MasLessonSlot.create!(start_time: '19:00:00')
MasLessonSlot.create!(start_time: '20:00:00')
MasLessonSlot.create!(start_time: '21:00:00')
MasLessonSlot.create!(start_time: '22:00:00')

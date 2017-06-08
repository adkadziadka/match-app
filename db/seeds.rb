

Admin.delete_all

Student.delete_all


admin = Admin.create!(email: 'admin@admin.com', password: '1234qwerty')

student1 = Student.create!(email: 'student@student.com', password: '1234qwerty', name: 'Omar')
student2 = Student.create!(email: 'adrianna@student.com', password: '1234qwerty', name: 'Adrianna')

Admin.delete_all
Student.delete_all

admin = Admin.create!(email: 'admin@admin.com', password: '1234qwerty')

student1 = Student.create!(email: 'student@student.com', password: '1234qwerty', name: 'Omar')
student2 = Student.create!(email: 'adrianna@student.com', password: '1234qwerty', name: 'Adrianna')
student3 = Student.create!(email: 'tim@student.com', password: '1234qwerty', name: 'Tim')
student4 = Student.create!(email: 'jeroen@student.com', password: '1234qwerty', name: 'Jeroen')
student5 = Student.create!(email: 'anna@student.com', password: '1234qwerty', name: 'Anna')
student6 = Student.create!(email: 'martin@student.com', password: '1234qwerty', name: 'Martin')
student7 = Student.create!(email: 'ringo@student.com', password: '1234qwerty', name: 'ringo')
student8 = Student.create!(email: 'paul@student.com', password: '1234qwerty', name: 'Paul')
student9 = Student.create!(email: 'john@student.com', password: '1234qwerty', name: 'John')
student10 = Student.create!(email: 'yoko@student.com', password: '1234qwerty', name: 'Yoko')

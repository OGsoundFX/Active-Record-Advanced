# This is where you can create initial data for your app.
Consultation.destroy_all
Patient.destroy_all
Intern.destroy_all
Doctor.destroy_all

doctor = Doctor.create(first_name: "gill", last_name: "Gilliam")

intern1 = Intern.create(first_name: "Sandy", last_name: "Cheeks")
intern2 = Intern.create(first_name: "Mermaid", last_name: "Man")
intern1.doctor = doctor
intern1.save
intern2.doctor = doctor
intern2.save

patient1 = Patient.create(first_name: "Bob", last_name: "Sponge")
patient2 = Patient.create(first_name: "Patrick", last_name: "Star")
patient3 = Patient.create(first_name: "Pearl", last_name: "Krabs")

consultation1 = Consultation.create(date: Date.today)
consultation2 = Consultation.create(date: Date.tomorrow)
consultation3 = Consultation.create(date: Date.today.next_week)

consultation1.doctor = doctor
consultation2.doctor = doctor
consultation3.doctor = doctor

consultation1.patient = patient1
consultation2.patient = patient2
consultation3.patient = patient3

consultation1.save
consultation2.save
consultation3.save

patient1.intern = intern1
patient2.intern = intern1
patient3.intern = intern2

patient1.save
patient2.save
patient3.save

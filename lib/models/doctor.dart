import 'package:flutter/material.dart';

class DoctorModel {
  String name;
  String image;
  Color imageBox;
  List<String> specialties;
  double score;
  String bio;
  List<CalendarModel> calendar;
  List<TimeModel> time;
  DoctorModel(
      {required this.name,
      required this.image,
      required this.imageBox,
      required this.specialties,
      required this.score,
      required this.bio,
      required this.calendar,
      required this.time});

  static List<DoctorModel> getDoctors() {
    List<DoctorModel> doctors = [];
    doctors.add(
      DoctorModel(
          name: 'Dr. Aisha Patel',
          image: 'assets/images/aisha.png',
          imageBox: const Color.fromARGB(52, 255, 87, 34),
          specialties: ['Cardiologist', 'Heart Surgeon', 'General Physician'],
          score: 4.9,
          bio:
              'Dr. Aisha Patel is a renowned Cardiologist with over 15 years of experience in treating heart-related ailments.',
          calendar: [
            CalendarModel(dayNumber: 14, dayName: 'Sun', isSelected: false),
            CalendarModel(dayNumber: 15, dayName: 'Mon', isSelected: false),
            CalendarModel(dayNumber: 16, dayName: 'Tue', isSelected: true),
            CalendarModel(dayNumber: 17, dayName: 'Wed', isSelected: false)
          ],
          time: [
            TimeModel(time: '10:00 AM', isSelected: true),
            TimeModel(time: '12:00 PM', isSelected: false),
            TimeModel(time: '04:00 PM', isSelected: false)
          ]),
    );
    doctors.add(
      DoctorModel(
          name: 'Dr. Rahul Singh',
          image: 'assets/images/rahul.png',
          imageBox: const Color.fromARGB(127, 33, 150, 243),
          specialties: ['Neurologist', 'Brain Surgeon', 'General Physician'],
          score: 4.7,
          bio:
              'Dr. Rahul Singh is a distinguished Neurologist with over 18 years of experience in brain surgery and treatment.',
          calendar: [
            CalendarModel(dayNumber: 14, dayName: 'Sun', isSelected: false),
            CalendarModel(dayNumber: 15, dayName: 'Mon', isSelected: false),
            CalendarModel(dayNumber: 16, dayName: 'Tue', isSelected: true),
            CalendarModel(dayNumber: 17, dayName: 'Wed', isSelected: false)
          ],
          time: [
            TimeModel(time: '08:00 AM', isSelected: true),
            TimeModel(time: '10:00 AM', isSelected: false),
            TimeModel(time: '02:00 PM', isSelected: false)
          ]),
    );
    doctors.add(
      DoctorModel(
          name: 'Dr. Vijay',
          image: 'assets/images/vijay.png',
          imageBox: const Color.fromARGB(127, 255, 87, 34),
          specialties: ['Orthopedic Surgeon', 'General Physician'],
          score: 4.9,
          bio:
              'Dr. Thalapathy Vijay is a skilled Orthopedic Surgeon known for his expertise and compassionate patient care.',
          calendar: [
            CalendarModel(dayNumber: 14, dayName: 'Sun', isSelected: false),
            CalendarModel(dayNumber: 15, dayName: 'Mon', isSelected: false),
            CalendarModel(dayNumber: 16, dayName: 'Tue', isSelected: true),
            CalendarModel(dayNumber: 17, dayName: 'Wed', isSelected: false)
          ],
          time: [
            TimeModel(time: '09:00 AM', isSelected: true),
            TimeModel(time: '01:00 PM', isSelected: false),
            TimeModel(time: '03:00 PM', isSelected: false)
          ]),
    );
    doctors.add(
      DoctorModel(
          name: 'Dr. Priya Menon',
          image: 'assets/images/priya.png',
          imageBox: const Color.fromARGB(127, 124, 252, 0),
          specialties: [
            'Pediatrician',
            'Child Specialist',
            'General Physician'
          ],
          score: 4.8,
          bio:
              'Dr. Priya Menon is a caring Pediatrician with over 10 years of experience in child healthcare.',
          calendar: [
            CalendarModel(dayNumber: 14, dayName: 'Sun', isSelected: false),
            CalendarModel(dayNumber: 15, dayName: 'Mon', isSelected: false),
            CalendarModel(dayNumber: 16, dayName: 'Tue', isSelected: true),
            CalendarModel(dayNumber: 17, dayName: 'Wed', isSelected: false)
          ],
          time: [
            TimeModel(time: '11:00 AM', isSelected: true),
            TimeModel(time: '01:00 PM', isSelected: false),
            TimeModel(time: '04:00 PM', isSelected: false)
          ]),
    );
    return doctors;
  }
}

class CalendarModel {
  final int dayNumber;
  final String dayName;
  bool isSelected;
  CalendarModel(
      {required this.dayNumber,
      required this.dayName,
      required this.isSelected});
}

class TimeModel {
  final String time;
  bool isSelected;
  TimeModel({required this.time, required this.isSelected});
}

class DoctorClass{
 String docName;
 String imgUrl;
 String specialist;
 double rating;
 int price;
 int patient;
 String experience;
 String aboutDoctor;
 List appointmentDays;
 List appointmentTimes;

 DoctorClass({
   required this.docName,
   required this.imgUrl,
   required this.specialist,
   required this.rating,
   required this.price,
   required this.experience,
   required this.patient,
   required this.aboutDoctor,
   required this.appointmentDays,
   required this.appointmentTimes,
});
}
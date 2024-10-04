void main() {
//   Map<String, dynamic> map1 = {
//     'zero': 0,
//     'one': 1,
//     'two': [
//       {
//         'aksh': 2,
//         'akaka': 3,
//         'akaka:': 2,
//       },
//       {
//         'aksh': 10,
//         'akakak':10
//       },
//     ],
//   };

//   for (int i = 0; i < map1['two'].length; i++) {
//     print(map1['two'][i]['aksh']);
//   }
// }

// ///vaiable,list,key(map),list,key
// print(studenstsdetails[0]['couresdetail'][0]['coursename'])



// for(int i=0,i<studentdetail[2]['coursedetail'].length,i++){
//     print(StudentDetails[2][i]['c'])



// print(studentdetail[2]['coursedetail'].lenght{

// }

// [1]['cousername'])

//  Map<String, dynamic> studentDetails = {
//     'first_name' : 'Mehedi',
//     'last_name' : 'Hasan',
//     'number': 2039120,
//     'status' : 'Passed'
// };


//     print(studentDetails['first_name']);

//     for (var value in studentDetails.values) {
//     print(value);

//   }



  Map<String, dynamic> studentDetails1 = {
    'name' : 'Mehedi',
    'number': 2039120,
    'course_details' : [
      {
        'course_name' : 'DS',
        'course_credit' : 3,
        'course_type' : 'IT'
      },
      {
        'course_name' : 'MAD',
        'course_credit' : 2,
        'course_type' : 'IT'
      },
      {
        'course_name' : 'Business Administration',
        'course_credit' : 3,
        'course_type' : 'Business'
      }
    ],
    'status' : 'Passed'
  };


  for(int i =0 ; i < studentDetails1['course_details'].length; i++){
    print(studentDetails1['course_details'][i]['course_type']);
  }

  print(studentDetails1);


}
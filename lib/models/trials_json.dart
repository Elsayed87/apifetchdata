// {
//     'id':'500',
//     'name':'sayed',
//     'score':100,

// }
import 'package:http/http.dart' as http;
import 'dart:convert';

// case one
// 1-map of <string,dynamic>
// - first thig we will create model for this map.

class Student {
  String id;
  String name;
  int score;
  Student(this.id, this.name, this.score);
  factory Student.fromJsom(Map<String, dynamic> json) {
    return Student(json['id'], json['name'], json['score']);
  }
}

// http request
Future<Student> getData() async {
  http.Response response = await http.get(Uri.parse(''));
  var map = jsonDecode(response.body);
  Student student = Student.fromJsom(map);
  return student;
}
// second case

// {
//     'id':'500',
//     'name':'sayed',
//     'score':100,
// 'subject':[
//   'math',
//   'arabic',
//   'english'
// ]

// }
class StudentCase2 {
  String id;
  String name;
  int score;
  List<String> subject;
  StudentCase2(this.id, this.name, this.score, this.subject);
  factory StudentCase2.fromJson(Map<String, dynamic> json) {
    return StudentCase2(
        json['id'], json['name'], json['score'], toList(json['subject']));
  }
  // why we make toList Function becuase list of dynamin is not asubtype of list of string
  // so we will switch the list of dynamic to list of list of string
  //plus we must make it static method to let us call inside consturctor.
  static List<String> toList(List<dynamic> list) {
    return List<String>.from(list);
  }
}

Future<StudentCase2> getDataCase2() async {
  http.Response response = await http.get(Uri.parse(''));
  var map = jsonDecode(response.body);
  StudentCase2 student = StudentCase2.fromJson(map);
  return student;
}

//  case three
// when found map or List of map we must create a model from it.
// when we make structure we will start from small model to big model
//

// {
//     'id':'500',
//     'name':'sayed',
//     'score':100,
// 'subject':[
//   'math',
//   'arabic',
//   'english'
// ],
// 'subject':{
//   'score ':100,
//   'id':"1000",

// }

//  }
class SubjectModel {
  int score;
  String id;
  SubjectModel(this.id, this.score);
  factory SubjectModel.fromJson(Map<String, dynamic> json) {
    return SubjectModel(
      json['score'],
      json['id'],
    );
  }
}

class StudentCase3 {
  String id;
  String name;
  int score;
  List<String> subject;
  SubjectModel subjectModel;
  StudentCase3(
      {required this.id,
      required this.name,
      required this.score,
      required this.subject,
      required this.subjectModel});
  factory StudentCase3.fromJson(json) {
    return StudentCase3(
        id: json['id'],
        name: json['name'],
        score: json['score'],
        subject: toList(json['subject']),
        subjectModel: SubjectModel.fromJson(json['subject']));
  }
  static List<String> toList(List<dynamic> list) {
    return List<String>.from(list);
  }
}

Future<StudentCase3> getDataCaseThree() async {
  http.Response response = await http.get(Uri.parse(''));
  var map = jsonDecode(response.body);
  StudentCase3 student = StudentCase3.fromJson(map);
  return student;
}
// case four
//we have list of maps

// {
//     'id':'500',
//     'name':'sayed',
//     'score':100,
// 'subjects':[
//   'math',
//   'arabic',
//   'english'
// ],
// 'subject':{
//   'score ':100,
//   'id':"1000",

// },
// 'Marks':[
//   {
//     "first":200,
//     "second":300,
//   },{
//      "first":400,
//     "second":500,
//   },{
//      "first":600,
//     "second":650,
//   }
// ]

//  }
class MarksModel {
  int first;
  int second;
  MarksModel({required this.first, required this.second});
  factory MarksModel.fromJson(json) {
    return MarksModel(first: json['first'], second: json['second']);
  }
}

class StudentFour {
  String id;
  String name;
  int score;
  List<String> subject;
  SubjectModel subjectModel;
  List<MarksModel> marks;
  StudentFour(
      {required this.id,
      required this.name,
      required this.score,
      required this.subject,
      required this.subjectModel,
      required this.marks});
  factory StudentFour.fromJson(json) {
    return StudentFour(
        id: json['id'],
        name: json['name'],
        score: json['score'],
        subject: toList(json['subjects']),
        subjectModel: SubjectModel.fromJson(json['subject']),
        marks: getList(json['Marks']));
  }

  static List<String> toList(List<dynamic> list) {
    return List<String>.from(list);
  }

  static List<MarksModel> getList(List<dynamic> list) {
    List<MarksModel> marksList =
        list.map((e) => MarksModel.fromJson(e)).toList();
    return marksList;
  }
}

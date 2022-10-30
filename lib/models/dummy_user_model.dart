class TotalDummyListOfUser {
  final List<DummyUser> finalUserList;

  TotalDummyListOfUser({required this.finalUserList});
  factory TotalDummyListOfUser.fromJson(json) {
    return TotalDummyListOfUser(finalUserList: getList(json['users']));
  }
  static List<DummyUser> getList(List<dynamic> list) {
    List<DummyUser> userList = list.map((e) => DummyUser.fromJson(e)).toList();
    return userList;
  }
}

class DummyUser {
  final int id;
  final String firstName;
  final String lastName;
  final String maidenName;

  final int age;
  final String gender;
  final String email;
  final String phone;
  final String username;
  final String password;
  final String birthDate;
  final String image;
  final String bloodGroup;
  final int height;
  final num weight;
  final String eyeColor;
  final HairModel hairModel;
  final String domain;
  final String ip;
  final AddressModel address;
  final String macAddress;
  final String university;
  final BankModel bankModel;
  final CompanyModel companyModel;
  final String ein;
  final String ssn;
  final String userAgent;

  DummyUser(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.maidenName,
      required this.age,
      required this.gender,
      required this.email,
      required this.phone,
      required this.username,
      required this.password,
      required this.birthDate,
      required this.image,
      required this.bloodGroup,
      required this.height,
      required this.weight,
      required this.eyeColor,
      required this.hairModel,
      required this.domain,
      required this.ip,
      required this.address,
      required this.macAddress,
      required this.university,
      required this.bankModel,
      required this.companyModel,
      required this.ein,
      required this.ssn,
      required this.userAgent});
  factory DummyUser.fromJson(json) {
    return DummyUser(
        id: json['id'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        maidenName: json['maidenName'],
        age: json['age'],
        gender: json['gender'],
        email: json['email'],
        phone: json['phone'],
        username: json['username'],
        password: json['password'],
        birthDate: json['birthDate'],
        image: json['image'],
        bloodGroup: json['bloodGroup'],
        height: json['height'],
        weight: json['weight'],
        eyeColor: json['eyeColor'],
        hairModel: HairModel.fromJson(json['hair']),
        domain: json['domain'],
        ip: json['ip'],
        address: AddressModel.fromJson(json['address']),
        macAddress: json['macAddress'],
        university: json['university'],
        bankModel: BankModel.fromJson(json['bank']),
        companyModel: CompanyModel.fromJson(json['company']),
        ein: json['ein'],
        ssn: json['ssn'],
        userAgent: json['userAgent']);
  }
}

class HairModel {
  final String color;

  final String type;

  HairModel({required this.color, required this.type});
  factory HairModel.fromJson(Map<String, dynamic> json) {
    return HairModel(color: json['color'], type: json['type']);
  }
}

class AddressModel {
  final String address;
  final String city;
  final CoordinatesModel coordinatesModel;
  final String postalCode;
  final String state;

  AddressModel(
      {required this.address,
      required this.city,
      required this.coordinatesModel,
      required this.postalCode,
      required this.state});
  factory AddressModel.fromJson(json) {
    return AddressModel(
        address: json['address'],
        city: json['city'] ?? 'no city loaded',
        coordinatesModel: CoordinatesModel.fromJson(json['coordinates']),
        postalCode: json['postalCode'],
        state: json['state']);
  }
}

class CoordinatesModel {
  final double lat;
  final double lng;

  CoordinatesModel({required this.lat, required this.lng});
  factory CoordinatesModel.fromJson(Map<String, dynamic> json) {
    return CoordinatesModel(lat: json['lat'], lng: json['lng']);
  }
}

class BankModel {
  final String cardExpire;
  final String cardNumber;
  final String cardType;
  final String currency;
  final String iban;

  BankModel(
      {required this.cardExpire,
      required this.cardNumber,
      required this.cardType,
      required this.currency,
      required this.iban});
  factory BankModel.fromJson(Map<String, dynamic> json) {
    return BankModel(
        cardExpire: json['cardExpire'],
        cardNumber: json['cardNumber'],
        cardType: json['cardType'],
        currency: json['currency'],
        iban: json['iban']);
  }
}

class CompanyModel {
  final AddressModel addressModel;
  final String department;
  final String name;
  final String title;

  CompanyModel(
      {required this.addressModel,
      required this.department,
      required this.name,
      required this.title});
  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      addressModel: AddressModel.fromJson(json['address']),
      department: json['department'],
      name: json['name'],
      title: json['title'],
    );
  }
}




// {
// "id": 3,
// "firstName": "Terrill",
// "lastName": "Hills",
// "maidenName": "Hoeger",
// "age": 38,
// "gender": "male",
// "email": "rshawe2@51.la",
// "phone": "+63 739 292 7942",
// "username": "rshawe2",
// "password": "OWsTbMUgFc",
// "birthDate": "1992-12-30",
// "image": "https://robohash.org/consequunturautconsequatur.png",
// "bloodGroup": "A−",
// "height": 200,
// "weight": 105.3,
// "eyeColor": "Gray",
// "hair": {
// "color": "Blond",
// "type": "Very curly"
// },
// "domain": "earthlink.net",
// "ip": "205.226.160.3",
// "address": {
// "address": "560 Penstock Drive",
// "city": "Grass Valley",
// "coordinates": {
// "lat": 39.213076,
// "lng": -121.077583
// },
// "postalCode": "95945",
// "state": "CA"
// },
// "macAddress": "F2:88:58:64:F7:76",
// "university": "University of Cagayan Valley",
// "bank": {
// "cardExpire": "10/23",
// "cardNumber": "3586082982526703",
// "cardType": "jcb",
// "currency": "Peso",
// "iban": "AT24 1095 9625 1434 9703"
// },
// "company": {
// "address": {
// "address": "18 Densmore Drive",
// "city": "Essex",
// "coordinates": {
// "lat": 44.492953,
// "lng": -73.101883
// },
// "postalCode": "05452",
// "state": "VT"
// },
// "department": "Marketing",
// "name": "Lindgren LLC",
// "title": "Mechanical Systems Engineer"
// },
// "ein": "48-3951994",
// "ssn": "633-89-1926",
// "userAgent": "Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:21.0.0) Gecko/20121011 Firefox/21.0.0"
// },
import 'dart:convert';

class UserModel {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;
  final AddressModel addressModel;
  final CompanyModel companyModel;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
    required this.addressModel,
    required this.companyModel,
  });
  factory UserModel.fromJson(jsonData) {
    return UserModel(
        id: jsonData['id'],
        name: jsonData['name'],
        username: jsonData['username'],
        email: jsonData['email'],
        phone: jsonData['phone'],
        website: jsonData['website'],
        addressModel: AddressModel.fromJson(jsonData['address']),
        companyModel: CompanyModel.fromJson(jsonData['company']));
  }
}

class AddressModel {
  final String street;
  final String suite;
  final String city;
  final String zipcode;

  AddressModel(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode});
  factory AddressModel.fromJson(jsonData) {
    return AddressModel(
        street: jsonData['street'],
        suite: jsonData['suite'],
        city: jsonData['city'],
        zipcode: jsonData['zipcode']);
  }
}

class CompanyModel {
  final String name;
  final String catchPhrase;
  final String bs;

  CompanyModel(
      {required this.name, required this.catchPhrase, required this.bs});
  factory CompanyModel.fromJson(jsonData) {
    return CompanyModel(
        name: jsonData['name'],
        catchPhrase: jsonData['catchPhrase'],
        bs: jsonData['bs']);
  }
}

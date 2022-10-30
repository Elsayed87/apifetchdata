import 'package:api_test/const/const.dart';
import 'package:api_test/models/dummy_user_model.dart';
import 'package:api_test/sevices/users_services.dart';
import 'package:flutter/material.dart';

class DumyScreenUser extends StatefulWidget {
  const DumyScreenUser({super.key});

  @override
  State<DumyScreenUser> createState() => _DumyScreenUserState();
}

class _DumyScreenUserState extends State<DumyScreenUser> {
  UserService userInfo = UserService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<DummyUser>>(
          future: userInfo.getListOfUser(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, i) {
                    return Card(
                        color: Colors.blue.withOpacity(.2),
                        child: Column(
                          children: [
                            Text(
                              'Id:${snapshot.data![i].id}',
                              style: textStyle,
                            ),
                            Text(
                              'First Name:${snapshot.data![i].firstName}',
                              style: textStyle,
                            ),
                            Text(
                              'Last Name:${snapshot.data![i].lastName}',
                              style: textStyle,
                            ),
                            Text(
                              'Maidel Name:${snapshot.data![i].maidenName}',
                              style: textStyle,
                            ),
                            Text(
                              'Age:${snapshot.data![i].age}',
                              style: textStyle,
                            ),
                            Text(
                              'Gender:${snapshot.data![i].gender}',
                              style: textStyle,
                            ),
                            Text(
                              'Email: ${snapshot.data![i].email}',
                              style: textStyle,
                            ),
                            Text(
                              'Phone:${snapshot.data![i].phone}',
                              style: textStyle,
                            ),
                            Text(
                              'User Name${snapshot.data![i].username}',
                              style: textStyle,
                            ),
                            Text(
                              'Password:${snapshot.data![i].password}',
                              style: textStyle,
                            ),
                            Text(
                              'Birth Date:${snapshot.data![i].birthDate}',
                              style: textStyle,
                            ),
                            Image.network(
                              '${snapshot.data![i].image}',
                              height: 100,
                            ),
                            Text(
                              'Blood Group:${snapshot.data![i].bloodGroup}',
                              style: textStyle,
                            ),
                            Text(
                              'Height: ${snapshot.data![i].height}',
                              style: textStyle,
                            ),
                            Text(
                              'Weight: ${snapshot.data![i].weight}',
                              style: textStyle,
                            ),
                            Text(
                              'Weight:${snapshot.data![i].domain}',
                              style: textStyle,
                            ),
                            Text(
                              'IP:${snapshot.data![i].ip}',
                              style: textStyle,
                            ),
                            Text(
                              'Mac Address:${snapshot.data![i].macAddress}',
                              style: textStyle,
                            ),
                            Text(
                              'University: ${snapshot.data![i].university}',
                              style: textStyle,
                            ),
                            Text(
                              'Ein:${snapshot.data![i].ein}',
                              style: textStyle,
                            ),
                            Text(
                              'Ssn: ${snapshot.data![i].ssn}',
                              style: textStyle,
                            ),
                            Text(
                              'User Agent :${snapshot.data![i].userAgent}',
                              style: textStyle,
                            ),
                            Text(
                              'Hair Color:${snapshot.data![i].hairModel.color}',
                              style: textStyle,
                            ),
                            Text(
                              'Hair Type: ${snapshot.data![i].hairModel.type}',
                              style: textStyle,
                            ),
                            Text(
                              'Address:${snapshot.data![i].address.address}',
                              style: textStyle,
                            ),
                            Text(
                              'City Address:${snapshot.data![i].address.city}',
                              style: textStyle,
                            ),
                            Text(
                              'Adress PostalCode: ${snapshot.data![i].address.postalCode}',
                              style: textStyle,
                            ),
                            Text(
                              'Adress state:${snapshot.data![i].address.state}',
                              style: textStyle,
                            ),
                            Text(
                              'Adress lat:${snapshot.data![i].address.coordinatesModel.lat}',
                              style: textStyle,
                            ),
                            Text(
                              'Adress lng:${snapshot.data![i].address.coordinatesModel.lng}',
                              style: textStyle,
                            ),
                            Text(
                              'Bank Card Expire:${snapshot.data![i].bankModel.cardExpire}',
                              style: textStyle,
                            ),
                            Text(
                              'Bank Card Number:${snapshot.data![i].bankModel.cardNumber}',
                              style: textStyle,
                            ),
                            Text(
                              'Bank Card Type: ${snapshot.data![i].bankModel.cardType}',
                              style: textStyle,
                            ),
                            Text(
                              'Bank Card Currency:${snapshot.data![i].bankModel.currency}',
                              style: textStyle,
                            ),
                            Text(
                              'Bank Iban:${snapshot.data![i].bankModel.iban}',
                              style: textStyle,
                            ),
                            Text(
                              'Company Address:${snapshot.data![i].companyModel.addressModel.address}',
                              style: textStyle,
                            ),
                            Text(
                              'Company Address City:${snapshot.data![i].companyModel.addressModel.city}',
                              style: textStyle,
                            ),
                            Text(
                              'Company Address Postal Code:${snapshot.data![i].companyModel.addressModel.postalCode}',
                              style: textStyle,
                            ),
                            Text(
                              'Company Address State:${snapshot.data![i].companyModel.addressModel.state}',
                              style: textStyle,
                            ),
                            Text(
                              'Company Address City Lat:${snapshot.data![i].companyModel.addressModel.coordinatesModel.lat}',
                              style: textStyle,
                            ),
                            Text(
                              'Company Address City Lng:${snapshot.data![i].companyModel.addressModel..coordinatesModel.lng}',
                              style: textStyle,
                            ),
                            Text(
                              'Company Department:${snapshot.data![i].companyModel.department}',
                              style: textStyle,
                            ),
                            Text(
                              'Company Name:${snapshot.data![i].companyModel.name}',
                              style: textStyle,
                            ),
                            Text(
                              'Company Title :${snapshot.data![i].companyModel.title}',
                              style: textStyle,
                            ),
                          ],
                        ));
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}

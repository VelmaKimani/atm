/* import 'dart:io';

import 'models/account_model.dart';

class PersonalAccounts {}

void main() {
  stdout.writeln("Enter your account number  ");
  double accountno = double.parse(stdin.readLineSync()!);

  stdout.writeln("Enter your password  ");
  int password = int.parse(stdin.readLineSync()!);

  List<Accounts> accounts = [
    Accounts(
      name: "Velma",
      accountNumber: 35668139,
      password: 123439,
      amount: 1000,
    ),
    Accounts(
      name: "Kimani",
      accountNumber: 35668140,
      password: 123440,
      amount: 2000,
    ),
    Accounts(
        name: "Nernst",
        accountNumber: 35668141,
        password: 123441,
        amount: 3000),
    Accounts(
        name: "Kirika",
        accountNumber: 35668142,
        password: 123442,
        amount: 4000),
    Accounts(
      name: "Henry",
      accountNumber: 35668143,
      password: 123443,
      amount: 5000,
    ),
    Accounts(
        name: "Githere",
        accountNumber: 35668144,
        password: 123444,
        amount: 6000),
  ];

  for (int i = 0; i < 6; i++) {
    if (i <= 1) {
      if (accountno == accounts[i].accountNumber &&
          password == accounts[i].password) {
        print("This is a personal account");
      }
    } else if (i <= 3) {
      if (accountno == accounts[i].accountNumber &&
          password == accounts[i].password) {
        print("This is a shared account");
      }
    } else if (i <= 5) {
      if (accountno == accounts[i].accountNumber &&
          password == accounts[i].password) {
        print("This is a savings account");
      }
    }
  }
}
 */
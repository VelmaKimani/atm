// ignore_for_file: unrelated_type_equality_checks

import 'dart:io';

import 'models/account_model.dart';

main() {
  stdout.writeln("Welcome to atm");

  List? accounts = [
    /* Accounts(
      name: "Velma",
      accountNumber: 35668149,
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
        amount: 6000), */
  ];
  int accountCounter = 20;

  while (true) {
    //print(accounts.map((account) => account.accountNumber).toList()); //when list was static
    //print(accounts.map((account) => account.name).toList());
    print(accounts);

    stdout.writeln("Have an existing account? (Yes/No)");

    // var existingPasswords = accounts.map((account) => account.password);

    if (stdin.readLineSync() == "yes") {
      stdout.writeln("Enter account number");
      int enteredAccountNumber = int.parse(stdin.readLineSync()!);

      stdout.writeln("Enter your password");
      int enteredPassword = int.parse(stdin.readLineSync()!);

      List allAccounts =
          accounts.map((account) => account.accountNumber).toList();
      List allPasswords = accounts.map((account) => account.password).toList();
      List accountsOnly = accounts.map((account) => account).toList();

      var existingAccountNumbers = allAccounts;
      var existingPassword = allPasswords;

      var map = accountsOnly.asMap().forEach((allAccounts, allPasswords) {
        print("account: $allAccounts, password: $allPasswords");
        /* if (allAccounts == enteredAccountNumber &&
            allPasswords == enteredPassword) {
          print("Success");
        } else {
          print("Failure");
        } */
      });
      /* var right = allAccounts
          .where((element) =>
              element[allAccounts] == enteredAccountNumber &&
              element[allPasswords] == enteredPassword)
          .map((element) => element[accountsOnly]);
      print(right); */

      /* for (int i = 0; i < accountsOnly.length; i++) {
        if (allAccounts == enteredAccountNumber &&
            allPasswords == enteredPassword) {
          print("Success yoo");
        } else {
          print("Nope!");
        }
      } */
      for (final correct in allAccounts) {
        if (enteredAccountNumber == existingAccountNumbers &&
            enteredPassword == existingPassword) {
          print(correct);
        } else {
          print("Please enter correct details");
          return;
        }
      }
      print("outkabisa");
      return;
    } else {
      stdout.writeln("Create new account? (Yes/No)");
      if (stdin.readLineSync() == "yes") {
        // int newCount = accountCounter++;
        stdout.writeln("Enter your name");
        String name = stdin.readLineSync()!;

        stdout.writeln("Enter your password");
        int newAccountPassword = int.parse(stdin.readLineSync()!);
        stdout.writeln("Enter your amount");
        double newAccountAmount = double.parse(stdin.readLineSync()!);
        //createNewAccount(name!, newAccountPassword, newAccountAmount);
        //stdout.writeln("Your account number is $accountCreated");

        addAccount(String name, int accountCounter, int newAccountPassword,
            double newAccountAmount) {
          final newAccount = Accounts(
              name: name,
              accountNumber: accountCounter,
              password: newAccountPassword,
              amount: newAccountAmount);
          accounts.add(newAccount);
          print(newAccount.accountNumber);
        }

        // ignore: unused_local_variable
        int newAccountNumber = accountCounter++;

        (addAccount(
            name, accountCounter, newAccountPassword, newAccountAmount));
        print(
            "You have successfully created your account: \n Your username is $name \n Your account number is $accountCounter \n Your password is $newAccountPassword \n Your amount in $newAccountAmount");

        print(accounts.map((account) => account.accountNumber).toList());
        newAccountNumber++;
      }
    }
  }
}
/* createNewAccount(String newName, int newPassword, double newAmount) {
    int accountCounter = 35668139;
    int accountCreated = accountCounter++;
    print(accountCreated);

    final newAccount = Accounts(
        name: newName,
        accountNumber: accountCreated,
        password: newPassword,
        amount: newAmount);

    accounts.add(newAccount);
  } */

/* int accountIncrement() {
    int accountCounter = 35668139;
    int accountCreated = accountCounter++;
    print(accountCreated);
    accounts.add(accountCreated);
    return accountCreated;
  } */


// ignore_for_file: public_member_api_docs, sort_constructors_first

class Accounts {
  final String name;
  final int accountNumber;
  final int password;
  final double amount;
  final List accounts = [];

  Accounts({
    required this.name,
    required this.accountNumber,
    required this.password,
    required this.amount,
  });

  List get allAccounts {
    return accounts;
  }

  set allAccounts(accounts) {
    // ignore: void_checks
    return accounts
        .where((account) => accounts.last < accounts.length)
        .toList();
  }
}

import 'package:flutter/material.dart';


class AccountPhoto extends StatelessWidget {
  const AccountPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          image: DecorationImage(
              fit: BoxFit.fill,
              image:
              NetworkImage("https://www.pngall.com/wp-content/uploads/5/Profile-PNG-File.png"))),
    );
  }
}

class AccountName extends StatelessWidget {
  const AccountName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: const Text(
          'Pedro Henrique Hoffmann da Cunha',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ));
  }
}

class AccountEmail extends StatelessWidget {
  const AccountEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: const Text(
          'pedro_h_cunha@edtudante.sc.senai.br',
          style: TextStyle(color: Colors.white),
        )
    );
  }
}

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return const UserAccountsDrawerHeader(
      decoration: BoxDecoration(color: Colors.blue),
      margin: EdgeInsets.only(bottom: 10.0),
      currentAccountPicture: AccountPhoto(),
      accountName: AccountName(),
      accountEmail: AccountEmail(),
    );
  }
}

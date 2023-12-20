import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:password_manager_app/constants.dart';
import 'package:password_manager_app/data.dart';
import 'package:password_manager_app/models/account.dart';

class AccountList extends StatelessWidget {
  const AccountList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 300,
        decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: ListView.builder(
            itemCount: accounts.length,
            itemBuilder: (BuildContext context, int index) {
              final Account account = accounts[index];
              return Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Fluttertoast.showToast(msg: "Password copied");
                  },
                  onLongPress: () => showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      print("here");
                      return const AlertDialog(
                        content: Text("data"),
                      );
                    },
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding: const EdgeInsets.all(10),
                    child: Flexible(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(
                                'assets/images/${account.appName}.png',
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  account.appName,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  account.accountName,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

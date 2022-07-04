import 'package:flutter/material.dart';
import 'package:password_manager_app/constants.dart';
import 'package:password_manager_app/widgets/account_list.dart';
import 'package:password_manager_app/widgets/favorites.dart';

class VaultScreen extends StatelessWidget {
  const VaultScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: const [
            Favorites(),
            AccountList(),
          ],
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet<dynamic>(
                  isScrollControlled: true,
                  backgroundColor: contentColorLightTheme,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                    return SingleChildScrollView(
                      child: Form(
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom:
                                  MediaQuery.of(context).viewInsets.bottom + 20,
                              top: 20,
                              left: 20,
                              right: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'New Account',
                                  ),
                                  TextButton(
                                    child: const Text(
                                      'Add',
                                      style: TextStyle(
                                          color: contentColorLightTheme),
                                    ),
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.white,
                                      ),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(color: Colors.grey[50]),
                                  labelText: 'Service',
                                ),
                              ),
                              const SizedBox(height: 5),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(color: Colors.grey[50]),
                                  labelText: 'Username/Email/Phone',
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Flexible(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelStyle:
                                            TextStyle(color: Colors.grey[50]),
                                        labelText: 'Password',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Generate',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: TextButton.styleFrom(
                                      minimumSize: Size.zero,
                                      padding: const EdgeInsets.all(12),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            },
            child: const Icon(Icons.add_rounded),
            style: ElevatedButton.styleFrom(
              elevation: 10,
              primary: accentColor,
              minimumSize: Size.zero,
              padding: const EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

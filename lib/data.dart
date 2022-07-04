// ACCOUNTS
import 'package:password_manager_app/models/account.dart';

final Account facebook = Account(
  id: 1,
  appName: 'Facebook',
  password: '12345',
  accountName: 'janedoe03',
);
final Account twitter = Account(
  id: 2,
  appName: 'Twitter',
  password: '12345',
  accountName: '@juandlc99',
);
final Account paypal = Account(
  id: 3,
  appName: 'Paypal',
  password: '12345',
  accountName: 'juan.dlc@gmail.com',
);
final Account dropbox = Account(
  id: 4,
  appName: 'Dropbox',
  password: '12345',
  accountName: 'akosijane@gmail.com',
);
final Account spotify = Account(
  id: 5,
  appName: 'Spotify',
  password: '12345',
  accountName: 'accountnigeorge@yahoo.com',
);

// FAVORITES
List<Account> favorites = [
  facebook,
  twitter,
  paypal,
  dropbox,
  spotify,
];

List<Account> accounts = [
  Account(
    id: 6,
    appName: 'Facebook',
    accountName: 'gwapoako69',
    password: '12345',
  ),
  Account(
    id: 6,
    appName: 'Gcash',
    accountName: 'accountnigeorge@yahoo.com',
    password: '12345',
  ),
  Account(
    id: 6,
    appName: 'Gmail',
    accountName: 'juju.gonzaga@unc.edu.ph',
    password: '12345',
  ),
  Account(
    id: 6,
    appName: 'Twitter',
    accountName: 'dummyaccount@gmail.com',
    password: '12345',
  ),
  Account(
    id: 6,
    appName: 'Spotify',
    accountName: 'anonymous@email.com',
    password: '12345',
  ),
  Account(
    id: 6,
    appName: 'Paymaya',
    accountName: 'gwapoako69',
    password: '12345',
  ),
  Account(
    id: 6,
    appName: 'Discord',
    accountName: 'gwapoako69@rocketmail.com',
    password: '12345',
  ),
  Account(
    id: 6,
    appName: 'Dropbox',
    accountName: 'asdf@gmail.com',
    password: '12345',
  ),
  Account(
    id: 6,
    appName: 'Instagram',
    accountName: 'bobong.marcos@gmail.com',
    password: '12345',
  ),
];

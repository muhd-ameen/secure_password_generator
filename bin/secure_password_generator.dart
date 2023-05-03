// ignore_for_file: avoid_print

import 'dart:io';

import 'dart:math';
import 'package:ansicolor/ansicolor.dart';
import 'package:secure_password_generator/secure_password_generator.dart'
    as cli;

Future<void> main(List<String> arguments) async {
  var args = arguments.map((e) => e.toLowerCase());

  // var flags = cli.extractFlags(arguments);
  // print(args);
  if (args.contains('help') || args.contains('-h')) {
    cli.showHelp();
  } else if (args.contains('version') || args.contains('-v')) {
    cli.showVersion();
  } else if (args.contains('license') || args.contains('-l')) {
    cli.showLicense();
  } else {
    try {
      Future.delayed(const Duration(milliseconds: 100), () => receiveLength());
    } on Exception catch (e) {
      ansiColorDisabled = false;
      final pen = AnsiPen();
      pen.red(bold: true);
      print(pen.write('\t${String.fromCharCode(0x1F92F)}\t${e.toString()}'));
    }
  }
}

receiveLength() {
  // Display a welcome message
  // print('Welcome to the secure password generator!');

  // Prompt user for password length
  print('Enter the length of the password:');
  final passwordLength = int.parse(stdin.readLineSync().toString());

  // Generate a random password
  print('Generating password...');

  final password = generatePassword(passwordLength);

  final pen = AnsiPen();
  pen.blue(bold: true);
  Future.delayed(
      const Duration(milliseconds: 1500),
      () =>

          // Display the password to the user
          print(
              'Your secure password is:${pen.write(' ${String.fromCharCode(0x1F680)}\t${password.toString()}')}'));
}

String generatePassword(int length) {
  // Display a message to the user

  // Define the characters to use in the password
  const lowercase = 'abcdefghijklmnopqrstuvwxyz';
  const uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const numbers = '0123456789';
  const symbols = '!@#%^&*()_+-=[]{}|;:<>,.?/~';

  // Combine the characters into one string
  const allChars = lowercase + uppercase + numbers + symbols;

  // Shuffle the string to create randomness
  final random = Random.secure();
  var charList = allChars.split('');
  charList.shuffle(random);
  final shuffledChars = charList.join('');

  // Take the first [length] characters to create the password
  final password = shuffledChars.substring(0, length);

  return password;
}

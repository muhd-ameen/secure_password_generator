library secure_password_generator;

import 'plugin_info.dart' as cli;

void showHelp() {
  print(cli.appDescription);
  print(cli.usage);
  print(cli.flags);
  print(cli.options);
  print(cli.exitStatus);
}

/// Show application version
void showVersion() {
  print('${cli.appName} ${cli.version}');
}

/// Show application license
void showLicense() {
  print(cli.license);
}

/// Exit code successfully value 0
const exitOk = 0;

/// Exit code failure value 1
const exitNok = 1;

/// Password default size
const defaultSize = 15;

/// Extract flags from arguments
enum Flags { help, license, version, daemon, entropy, noColor, none }

List<Flags> extractFlags(List<String> arguments) {
  var flags = <Flags>[];
  var args = arguments.map((e) => e.toLowerCase());

  if (args.contains('-o') || args.contains('--noColor')) {
    flags.add(Flags.noColor);
  }

  if (args.contains('-e') || args.contains('--entropy')) {
    flags.add(Flags.entropy);
  }

  if (args.contains('-d') || args.contains('--daemon')) {
    flags.add(Flags.daemon);
  }

  if (args.contains('-h') || args.contains('--help')) {
    flags.add(Flags.help);
  } else if (args.contains('-l') || args.contains('--license')) {
    flags.add(Flags.license);
  } else if (args.contains('-v') || args.contains('--version')) {
    flags.add(Flags.version);
  } else {
    flags.add(Flags.none);
  }
  return flags;
}

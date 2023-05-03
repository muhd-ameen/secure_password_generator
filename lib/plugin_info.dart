// ignore_for_file: unnecessary_string_escapes

/*
 * Copyright (c) 2021.  ʕʘ̅͜ʘ̅ʔ
 * Use of this source code is governed by a
 * MIT license that can be found in the LICENSE file.
 */

// ignore_for_file: lines_longer_than_80_chars
/// Application version
const version = '1.0.0';

/// application name
const appName = 'secure_password_generator';

/// Application description
const appDescription =
    '\tApplication to generate passwords or a phrase composed '
    'of several words.\n\tIt\'s possible to use one or more collections of items '
    'as source to create them.\n';

/// Application license (MIT)
const license = 'MIT https://www.opensource.org/licenses/mit-license.php\n'
    'Copyright 2021 ʕʘ̅͜ʘ̅ʔ\n'
    'Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated\n'
    'documentation files (the "Software"), to deal in the Software without restriction, including without limitation\n'
    'the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,\n'
    'and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n\n'
    'The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n\n'
    'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED\n'
    'TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.\n'
    'IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,\n'
    'WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE\n'
    'OR OTHER DEALINGS IN THE SOFTWARE.';

/// Usage text
const usage = 'USAGE:\n'
    '\secure_password_generator [FLAGS] [OPTIONS]...\n'
    '\secure_password_generator \t\t\tWill create one password with default parameters\n';

/// FLAGS text
const flags = 'FLAGS:\n'
    '\t-d, --daemon\t\t\tStart a long-running daemon process.\n'
    '\t\t\t\t\t\tUse -h, --help with daemon to learn more about http daemon server.\n'
    '\t-e, --entropy\t\t\tDisplay entropy.\n'
    '\t-o, --noColor\t\t\tDon\'t use color to display result.\n'
    '\t-h, --help\t\t\tPrint a help message\n'
    '\t-l, --license\t\t\tPrints license information\n'
    '\t-v, --version\t\t\tPrints version information\n';

/// OPTIONS text
const options = 'OPTIONS:\n'
    '\t-c, --collection\t\tlatin or french or german or spanish or italian or eff\n'
    '\t-s, --size\t\t\tpassword size default=15\n'
    '\t-n, --number\t\t\tnumber of password to generate default=1\n'
    '\t-f, --file\t\t\tText file with items (one item per line)\n'
    '\t-x, --exclude\t\t\tList of excluded items separated by ,\n';

/// EXIT STATUS code text
const exitStatus = 'EXIT STATUS:\n'
    '\tThe CLI will exit with one of the following values:\n'
    '\t0\t\t\t\tSuccessful execution.\n'
    '\t1\t\t\t\tFailed executions.\n';

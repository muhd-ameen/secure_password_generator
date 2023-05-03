[![Pub](https://img.shields.io/pub/v/passwd_gen_cli.svg)](https://img.shields.io/pub/v/passwd_gen_cli)
# Command Line password and passphrase generator.

Command line application to generate passwords or a phrase composed of several words. 
It is possible to use one or more collections as source to create them.

## Install

### From source

You need Dart [Get the Dart SDK](https://dart.dev/get-dart)

#### Get source 
```shell
git clone https://gitlab.com/kurdy/passwd-gen-cli.git
```

#### At the root of the source directory 

##### tests

Start daemon

```shell
dart run passwd_gen_cli --daemon -f "emoji|test/emoji-items.txt" &
```
Run tests
```shell
dart test
```
> 00:10 +28 ~1: All tests passed!

##### compile & build

```shell
dart compile exe ./bin/passwd_gen_cli.dart -o ./build/passwd_gen
```

##### howto

See [Examples](https://gitlab.com/kurdy/passwd-gen-cli/-/blob/master/example/example.md)


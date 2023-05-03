# Examples

## Show version
```shell
passwd_gen -v
```

### Result: 
```text
passwd_gen_cli 1.0.2
```

## Get help
```shell
passwd_gen_cli -h
```

### Result:

```text
Application to generate passwords or a phrase composed of several words.
It's possible to use one or more collections of items as source to create them.

USAGE:
        passwd_gen_cli [FLAGS] [OPTIONS]...
        passwd_gen_cli                  Will create one password with default parameters

FLAGS:
        -d, --daemon                    Start a long-running daemon process.
                                                Use -h, --help with daemon to learn more about http daemon server.
        -e, --entropy                   Display entropy.
        -o, --noColor                   Don't use color to display result.
        -h, --help                      Print a help message
        -l, --license                   Prints license information
        -v, --version                   Prints version information

OPTIONS:
        -c, --collection                latin or french or german or spanish or italian or eff
        -s, --size                      password size default=15
        -n, --number                    number of password to generate default=1
        -f, --file                      Text file with items (one item per line)
        -x, --exclude                   List of excluded items separated by ,

EXIT STATUS:
        The CLI will exit with one of the following values:
        0                               Successful execution.
        1                               Failed executions.
```

```shell


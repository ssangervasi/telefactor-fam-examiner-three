# Git Log

```
commit 835dae010379590d45c2e4a7ee4e6a771a3cd8ed
Author: Sebastian Sangervasi <ssangervasi@squareup.com>
Date:   Mon Aug 12 12:20:23 2019 -0700

    Copied in source
```

# CLOC


cloc|github.com/AlDanial/cloc v 1.82  T=0.05 s (707.6 files/s, 27117.5 lines/s)
--- | ---

Language|files|blank|comment|code
:-------|-------:|-------:|-------:|-------:
Ruby|28|195|177|781
Markdown|7|68|0|125
Bourne Again Shell|1|6|0|35
YAML|1|6|10|15
--------|--------|--------|--------|--------
SUM:|37|275|187|956

# Spec Results
## Fam

```
No examples found.

Finished in 0.00033 seconds (files took 1.22 seconds to load)
0 examples, 0 failures

```

## Boilerplate

```

Fam::CLI::Add::Parents
  when the child and parent names are given
    behaves like a successful command
      exits with a zero status code
      matches the expected output
  when all names are missing
    behaves like a failed command
      exits with a non-zero status code
      matches the expected error

Fam::CLI::Add::Person
  when a name is given
    behaves like a successful command
      exits with a zero status code
      matches the expected output
  when no name is provided
    behaves like a failed command
      exits with a non-zero status code
      matches the expected error

Fam::CLI::Get::Parents
  when a child name is given
    behaves like a successful command
      exits with a zero status code
      matches the expected output
  when the child name is missing
    behaves like a failed command
      exits with a non-zero status code
      matches the expected error

Fam::CLI::Get::Person
  when a name is given
    behaves like a successful command
      exits with a zero status code
      matches the expected output
  when the name is missing
    behaves like a failed command
      exits with a non-zero status code
      matches the expected error

Fam::File::Reader::JSONReader
  #read
    when the file does not exist
      raises an error
    when the file exists
      should be a kind of Hash

Fam::File::Writer::JSONWriter
  #write
    should be a kind of String
    modifies the specified file

Finished in 20.44 seconds (files took 0.81232 seconds to load)
20 examples, 0 failures

```


# Git Log

```
commit ce076f4517e365223cd7fbbabf23881f05801be7
Merge: 36bc40d 4853980
Author: lchristopherson <lchristopherson88@gmail.com>
Date:   Fri Aug 16 11:16:29 2019 -0700

    Merge pull request #2 from ssangervasi/lchristopherson/rework-shared-specs
    
    Rework shared examples
```

# CLOC


cloc|github.com/AlDanial/cloc v 1.82  T=0.06 s (611.7 files/s, 28503.4 lines/s)
--- | ---

Language|files|blank|comment|code
:-------|-------:|-------:|-------:|-------:
Ruby|28|250|178|1028
Markdown|7|69|0|127
Bourne Again Shell|1|6|0|35
YAML|1|6|10|15
--------|--------|--------|--------|--------
SUM:|37|331|188|1205

# Spec Results
## Fam

```

Fam
  .add_person
    with a new person
      persists the person
      behaves like a successful response
        has the expected output
        does not have an error
        has a status of 0
    with an existing person
      behaves like a failed response
        does not have any output
        has the expected error
        has a non-zero status
      behaves like does not persist any state
        does not write to the output file
  .add_parents
    with an existing child
      when child has no parents
        adding one parent
          behaves like a successful response
            has the expected output
            does not have an error
            has a status of 0
          behaves like a child-parent relationship
            persists the relationship
        adding two parents
          behaves like a successful response
            has the expected output
            does not have an error
            has a status of 0
          behaves like a child-parent relationship
            persists the relationship
      when child has one parent
        adding one parent
          behaves like a successful response
            has the expected output
            does not have an error
            has a status of 0
          behaves like a child-parent relationship
            persists the relationship
        adding two parents
          behaves like a failed response
            does not have any output
            has the expected error
            has a non-zero status
          behaves like does not persist any state
            does not write to the output file
      when child has two parents
        behaves like a failed response
          does not have any output
          has the expected error
          has a non-zero status
        behaves like does not persist any state
          does not write to the output file
      adding a non-existent parent
        behaves like a failed response
          does not have any output
          has the expected error
          has a non-zero status
        behaves like does not persist any state
          does not write to the output file
    with a non-existent child
      behaves like a failed response
        does not have any output
        has the expected error
        has a non-zero status
  .get_person
    with an existing person
      behaves like a successful response
        has the expected output
        does not have an error
        has a status of 0
    with a non-existent person
      behaves like a failed response
        does not have any output
        has the expected error
        has a non-zero status
  .get_parents
    with an existing child
      with parents
        behaves like a successful response
          has the expected output
          does not have an error
          has a status of 0
      with no parents
        behaves like a successful response
          has the expected output
          does not have an error
          has a status of 0
    with a non-existent child
      behaves like a failed response
        does not have any output
        has the expected error
        has a non-zero status
  .get_grandparents
    with an existing child
      with greatness 0
        with a full tree
          behaves like a successful response
            has the expected output
            does not have an error
            has a status of 0
        with no grandparents
          behaves like a successful response
            has the expected output
            does not have an error
            has a status of 0
      with greatness 1
        with a full tree
          behaves like a successful response
            has the expected output (FAILED - 1)
            does not have an error (FAILED - 2)
            has a status of 0 (FAILED - 3)
      with greatness 2
        with a full tree
          behaves like a successful response
            has the expected output (FAILED - 4)
            does not have an error (FAILED - 5)
            has a status of 0 (FAILED - 6)
    with a non-existent child
      behaves like a failed response
        does not have any output
        has the expected error
        has a non-zero status

Failures:

  1) Fam.get_grandparents with an existing child with greatness 1 with a full tree behaves like a successful response has the expected output
     Failure/Error: get_parents_at_generation(input_path: input_path, child_name: child_name, generations: greatness + 1)

     TypeError:
       no implicit conversion of Integer into String
     Shared Example Group: "a successful response" called from ./spec/fam/fam_spec.rb:229
     # ./lib/fam.rb:75:in `+'
     # ./lib/fam.rb:75:in `get_grandparents'
     # ./spec/fam/fam_spec.rb:167:in `block (3 levels) in <top (required)>'
     # ./spec/spec_helpers/fam.rb:13:in `block (2 levels) in <top (required)>'

  2) Fam.get_grandparents with an existing child with greatness 1 with a full tree behaves like a successful response does not have an error
     Failure/Error: get_parents_at_generation(input_path: input_path, child_name: child_name, generations: greatness + 1)

     TypeError:
       no implicit conversion of Integer into String
     Shared Example Group: "a successful response" called from ./spec/fam/fam_spec.rb:229
     # ./lib/fam.rb:75:in `+'
     # ./lib/fam.rb:75:in `get_grandparents'
     # ./spec/fam/fam_spec.rb:167:in `block (3 levels) in <top (required)>'
     # ./spec/spec_helpers/fam.rb:14:in `block (2 levels) in <top (required)>'

  3) Fam.get_grandparents with an existing child with greatness 1 with a full tree behaves like a successful response has a status of 0
     Failure/Error: get_parents_at_generation(input_path: input_path, child_name: child_name, generations: greatness + 1)

     TypeError:
       no implicit conversion of Integer into String
     Shared Example Group: "a successful response" called from ./spec/fam/fam_spec.rb:229
     # ./lib/fam.rb:75:in `+'
     # ./lib/fam.rb:75:in `get_grandparents'
     # ./spec/fam/fam_spec.rb:167:in `block (3 levels) in <top (required)>'
     # ./spec/spec_helpers/fam.rb:15:in `block (2 levels) in <top (required)>'

  4) Fam.get_grandparents with an existing child with greatness 2 with a full tree behaves like a successful response has the expected output
     Failure/Error: get_parents_at_generation(input_path: input_path, child_name: child_name, generations: greatness + 1)

     TypeError:
       no implicit conversion of Integer into String
     Shared Example Group: "a successful response" called from ./spec/fam/fam_spec.rb:273
     # ./lib/fam.rb:75:in `+'
     # ./lib/fam.rb:75:in `get_grandparents'
     # ./spec/fam/fam_spec.rb:167:in `block (3 levels) in <top (required)>'
     # ./spec/spec_helpers/fam.rb:13:in `block (2 levels) in <top (required)>'

  5) Fam.get_grandparents with an existing child with greatness 2 with a full tree behaves like a successful response does not have an error
     Failure/Error: get_parents_at_generation(input_path: input_path, child_name: child_name, generations: greatness + 1)

     TypeError:
       no implicit conversion of Integer into String
     Shared Example Group: "a successful response" called from ./spec/fam/fam_spec.rb:273
     # ./lib/fam.rb:75:in `+'
     # ./lib/fam.rb:75:in `get_grandparents'
     # ./spec/fam/fam_spec.rb:167:in `block (3 levels) in <top (required)>'
     # ./spec/spec_helpers/fam.rb:14:in `block (2 levels) in <top (required)>'

  6) Fam.get_grandparents with an existing child with greatness 2 with a full tree behaves like a successful response has a status of 0
     Failure/Error: get_parents_at_generation(input_path: input_path, child_name: child_name, generations: greatness + 1)

     TypeError:
       no implicit conversion of Integer into String
     Shared Example Group: "a successful response" called from ./spec/fam/fam_spec.rb:273
     # ./lib/fam.rb:75:in `+'
     # ./lib/fam.rb:75:in `get_grandparents'
     # ./spec/fam/fam_spec.rb:167:in `block (3 levels) in <top (required)>'
     # ./spec/spec_helpers/fam.rb:15:in `block (2 levels) in <top (required)>'

Finished in 0.11646 seconds (files took 0.77707 seconds to load)
65 examples, 6 failures

Failed examples:

rspec ./spec/fam/fam_spec.rb[1:5:1:2:1:1:1] # Fam.get_grandparents with an existing child with greatness 1 with a full tree behaves like a successful response has the expected output
rspec ./spec/fam/fam_spec.rb[1:5:1:2:1:1:2] # Fam.get_grandparents with an existing child with greatness 1 with a full tree behaves like a successful response does not have an error
rspec ./spec/fam/fam_spec.rb[1:5:1:2:1:1:3] # Fam.get_grandparents with an existing child with greatness 1 with a full tree behaves like a successful response has a status of 0
rspec ./spec/fam/fam_spec.rb[1:5:1:3:1:1:1] # Fam.get_grandparents with an existing child with greatness 2 with a full tree behaves like a successful response has the expected output
rspec ./spec/fam/fam_spec.rb[1:5:1:3:1:1:2] # Fam.get_grandparents with an existing child with greatness 2 with a full tree behaves like a successful response does not have an error
rspec ./spec/fam/fam_spec.rb[1:5:1:3:1:1:3] # Fam.get_grandparents with an existing child with greatness 2 with a full tree behaves like a successful response has a status of 0

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

Finished in 14.39 seconds (files took 0.45276 seconds to load)
20 examples, 0 failures

```


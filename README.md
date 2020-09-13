# KnuthMorrisPratt.jl

[![Build Status](https://travis-ci.com/closekn/KnuthMorrisPratt.jl.svg?branch=master)](https://travis-ci.com/closekn/KnuthMorrisPratt.jl)
[![Coverage](https://codecov.io/gh/closekn/KnuthMorrisPratt.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/closekn/KnuthMorrisPratt.jl)
[![Coverage](https://coveralls.io/repos/github/closekn/KnuthMorrisPratt.jl/badge.svg?branch=master)](https://coveralls.io/github/closekn/KnuthMorrisPratt.jl?branch=master)

A Julia implementation of the Knuth-Morris-Pratt algorithm for string searching.

## Feature

Find the first occurrence of a keyword in the text.

## Install

- Press ']'' in Julia's REPL to enter package mode.

```julia
pkg> add https://github.com/closekn/KnuthMorrisPratt.jl
```

## Example

- code

```julia
using KnuthMorrisPratt
text = "Hello, world!"
keyword = "world"

pos = KMP_search(text, keyword)

if pos <= length(text)
  println("Found : $(pos)")
else
  println("Not Found")
end
```

- output

```shell
Found : 8
```

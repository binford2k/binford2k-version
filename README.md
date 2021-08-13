# version comparisons

Do you look up the docs for `versioncmp()` every time you use it? Me too. This
module is just a thin syntactical sugar wrapper around that function that makes
it easy for humans to read and write.

It contains a small set of functions that make the code you write more readable.
The function name says what it does and it returns a boolean value for you to
build conditionals with. Versions can be passed as either strings (like
`"1.0.0"`) or numbers (like `1` or `1.0`).

All functions can be used in either infix or postfix style. For example, all of
these comparisons do exactly the same thing.

```
if(fact('os.release.minor').version::greater('5')) {
    notice("Minor os release greater than 5")
}

if(fact('os.release.minor').version::greater(5)) {
    notice("Minor os release greater than 5")
}

if(version::greater(fact('os.release.minor'), 5)) {
    notice("Minor os release greater than 5")
}
```


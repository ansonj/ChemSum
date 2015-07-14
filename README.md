# ChemSum

by [Anson Jablinski](http://ansonj.org)

## Goal

User enters molecular formula. App calculates molecular mass by summing the mass of the atoms in the formula.

## Status

No UI currently. Test-driven development being used to create model classes.

## Notes

- The `CanaryTest` class is used as an initial sanity test to ensure that the development environment is working properly.
- Because the HTML `<sub>` tag makes it easy to render subscripts, I plan to use a simple `UIWebView` to render the molecular formula. You can see examples of the `<sub>` tags in the `Atom` class and related tests.

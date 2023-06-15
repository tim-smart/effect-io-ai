# noneOrFail

Lifts an `Option` into a `Effect`. If the option is empty it succeeds with
`void`. If the option is defined it fails with the content.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.noneOrFail`.

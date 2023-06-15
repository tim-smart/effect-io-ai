# Sequential

The `Sequential` cause represents the composition of two causes which occurred
sequentially.

For example, if we perform Effect-TS's analog of `try-finally` (i.e.
`Effect.ensuring`), and both the `try` and `finally` blocks fail, we have two
errors which occurred sequentially. In these cases, the errors can be
represented by the `Sequential` cause.

Part of the `Cause` module from the `@effect/io` package. Also known as `Cause.Sequential`.

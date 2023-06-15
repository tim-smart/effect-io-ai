# absorb

This function transforms an `Effect` value that may fail with a defect
into a new `Effect` value that may fail with an unknown error.

The resulting `Effect` value will have the same context and success
type as the original `Effect` value, but it will have a more general
error type that allows it to fail with any type of error.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.absorb`.

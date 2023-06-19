# Sink

A `Sink<R, E, In, L, Z>` is used to consume elements produced by a `Stream`.
You can think of a sink as a function that will consume a variable amount of
`In` elements (could be 0, 1, or many), might fail with an error of type `E`,
and will eventually yield a value of type `Z` together with a remainder of
type `L` (i.e. any leftovers).

Part of the `Sink` module, imported from `@effect/stream/Sink`.

# getOrElse

Returns the `A` if specified exit is a `Success`, otherwise returns the
alternate `A` value computed from the specified function which receives the
`Cause<E>` of the exit `Failure`.

Part of the `Exit` module from the `@effect/io` package. Also known as `Exit.getOrElse`.

# flipCauseOption

Converts the specified `Cause<Option<E>>` to an `Option<Cause<E>>` by
recursively stripping out any failures with the error `None`.

Part of the `Cause` module from the `@effect/io` package. Also known as `Cause.flipCauseOption`.

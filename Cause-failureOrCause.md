# failureOrCause

Returns the first checked error on the `Left` if available, if there are
no checked errors return the rest of the `Cause` that is known to contain
only `Die` or `Interrupt` causes.

Part of the `Cause` module from the `@effect/io` package. Also known as `Cause.failureOrCause`.

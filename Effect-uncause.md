# uncause

When this effect succeeds with a cause, then this method returns a new
effect that either fails with the cause that this effect succeeded with, or
succeeds with unit, depending on whether the cause is empty.

This operation is the opposite of `cause`.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.uncause`.

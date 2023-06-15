# zipParRight

Returns an effect that executes both this effect and the specified effect,
in parallel, returning result of the provided effect. If either side fails,
then the other side will be interrupted.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.zipParRight`.

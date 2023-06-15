# raceAwait

Returns an effect that races this effect with the specified effect,
returning the first successful `A` from the faster side. If one effect
succeeds, the other will be interrupted. If neither succeeds, then the
effect will fail with some error.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.raceAwait`.

# race

Returns an effect that races this effect with the specified effect,
returning the first successful `A` from the faster side. If one effect
succeeds, the other will be interrupted. If neither succeeds, then the
effect will fail with some error.

Note that both effects are disconnected before being raced. This means that
interruption of the loser will always be performed in the background. If this
behavior is not desired, you can use `Effect.raceWith`, which will not
disconnect or interrupt losers.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.race`.

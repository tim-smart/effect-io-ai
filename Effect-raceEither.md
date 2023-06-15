# raceEither

Returns an effect that races this effect with the specified effect,
yielding the first result to succeed. If neither effect succeeds, then the
composed effect will fail with some error.

WARNING: The raced effect will safely interrupt the "loser", but will not
resume until the loser has been cleanly terminated.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.raceEither`.

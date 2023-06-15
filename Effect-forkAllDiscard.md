# forkAllDiscard

Returns an effect that forks all of the specified values, and returns a
composite fiber that produces unit. This version is faster than `forkAll`
in cases where the results of the forked fibers are not needed.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.forkAllDiscard`.

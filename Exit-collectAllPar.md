# collectAllPar

Collects all of the specified exit values into a `Some<Exit<E, List<A>>>`. If
the provided iterable contains no elements, `None` will be returned.

**Note**: `Exit.collectAll` combines `Cause` values in parallel.

Part of the `Exit` module from the `@effect/io` package. Also known as `Exit.collectAllPar`.

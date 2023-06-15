# trySuspend

Returns a lazily constructed effect, whose construction may itself require
effects. When no context is required (i.e., when `R == unknown`) it is
conceptually equivalent to `flatten(succeed(io))`.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.trySuspend`.

# transplant

Transplants specified effects so that when those effects fork other
effects, the forked effects will be governed by the scope of the fiber that
executes this effect.

This can be used to "graft" deep grandchildren onto a higher-level scope,
effectively extending their lifespans into the parent scope.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.transplant`.

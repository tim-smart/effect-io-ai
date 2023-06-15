# interrupt

Completes the `Deferred` with interruption. This will interrupt all fibers
waiting on the value of the `Deferred` with the `FiberId` of the fiber
calling this method.

Part of the `Deferred` module from the `@effect/io` package. Also known as `Deferred.interrupt`.

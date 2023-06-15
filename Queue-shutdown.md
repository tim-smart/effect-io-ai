# shutdown

Interrupts any fibers that are suspended on `offer` or `take`. Future calls
to `offer*` and `take*` will be interrupted immediately.

Part of the `Queue` module from the `@effect/io` package. Also known as `Queue.shutdown`.

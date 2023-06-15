# shutdown

Interrupts any fibers that are suspended on `offer` or `take`. Future calls
to `offer*` and `take*` will be interrupted immediately.

Part of the `Hub` module from the `@effect/io` package. Also known as `Hub.shutdown`.

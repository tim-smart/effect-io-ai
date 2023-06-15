# interrupt

Interrupts the fiber from whichever fiber is calling this method. If the
fiber has already exited, the returned effect will resume immediately.
Otherwise, the effect will resume when the fiber exits.

Part of the `Fiber` module from the `@effect/io` package. Also known as `Fiber.interrupt`.

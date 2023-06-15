# interruptFork

Interrupts the fiber from whichever fiber is calling this method. The
interruption will happen in a separate daemon fiber, and the returned
effect will always resume immediately without waiting.

Part of the `Fiber` module from the `@effect/io` package. Also known as `Fiber.interruptFork`.

# orElseEither

Returns a fiber that prefers `this` fiber, but falls back to the `that` one
when `this` one fails. Interrupting the returned fiber will interrupt both
fibers, sequentially, from left to right.

Part of the `Fiber` module from the `@effect/io` package. Also known as `Fiber.orElseEither`.

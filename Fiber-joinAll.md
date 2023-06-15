# joinAll

Joins all fibers, awaiting their _successful_ completion. Attempting to
join a fiber that has erred will result in a catchable error, _if_ that
error does not result from interruption.

Part of the `Fiber` module from the `@effect/io` package. Also known as `Fiber.joinAll`.

# raceFibersWith

Forks this effect and the specified effect into their own fibers, and races
them, calling one of two specified callbacks depending on which fiber wins
the race. This method does not interrupt, join, or otherwise do anything
with the fibers. It can be considered a low-level building block for
higher-level operators like `race`.

To import and use `raceFibersWith` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.raceFibersWith
```

**Signature**

```ts
export declare const raceFibersWith: {
  <E, A, R1, E1, A1, R2, E2, A2, R3, E3, A3>(
    that: Effect<R1, E1, A1>,
    selfWins: (winner: Fiber.RuntimeFiber<E, A>, loser: Fiber.RuntimeFiber<E1, A1>) => Effect<R2, E2, A2>,
    thatWins: (winner: Fiber.RuntimeFiber<E1, A1>, loser: Fiber.RuntimeFiber<E, A>) => Effect<R3, E3, A3>
  ): <R>(self: Effect<R, E, A>) => Effect<R1 | R2 | R3 | R, E2 | E3, A2 | A3>
  <R, E, A, R1, E1, A1, R2, E2, A2, R3, E3, A3>(
    self: Effect<R, E, A>,
    that: Effect<R1, E1, A1>,
    selfWins: (winner: Fiber.RuntimeFiber<E, A>, loser: Fiber.RuntimeFiber<E1, A1>) => Effect<R2, E2, A2>,
    thatWins: (winner: Fiber.RuntimeFiber<E1, A1>, loser: Fiber.RuntimeFiber<E, A>) => Effect<R3, E3, A3>
  ): Effect<R | R1 | R2 | R3, E2 | E3, A2 | A3>
}
```

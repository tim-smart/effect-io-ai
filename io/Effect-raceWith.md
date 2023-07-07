# raceWith

Returns an effect that races this effect with the specified effect, calling
the specified finisher as soon as one result or the other has been computed.

To import and use `raceWith` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.raceWith
```

**Signature**

```ts
export declare const raceWith: {
  <E, A, R1, E1, A1, R2, E2, A2, R3, E3, A3>(options: {
    readonly other: Effect<R1, E1, A1>
    readonly onSelfDone: (exit: Exit.Exit<E, A>, fiber: Fiber.Fiber<E1, A1>) => Effect<R2, E2, A2>
    readonly onOtherDone: (exit: Exit.Exit<E1, A1>, fiber: Fiber.Fiber<E, A>) => Effect<R3, E3, A3>
  }): <R>(self: Effect<R, E, A>) => Effect<R1 | R2 | R3 | R, E2 | E3, A2 | A3>
  <R, E, A, R1, E1, A1, R2, E2, A2, R3, E3, A3>(
    self: Effect<R, E, A>,
    options: {
      readonly other: Effect<R1, E1, A1>
      readonly onSelfDone: (exit: Exit.Exit<E, A>, fiber: Fiber.Fiber<E1, A1>) => Effect<R2, E2, A2>
      readonly onOtherDone: (exit: Exit.Exit<E1, A1>, fiber: Fiber.Fiber<E, A>) => Effect<R3, E3, A3>
    }
  ): Effect<R | R1 | R2 | R3, E2 | E3, A2 | A3>
}
```

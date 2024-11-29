# raceWith

Returns an effect that races this effect with the specified effect, calling
the specified finisher as soon as one result or the other has been computed.

To import and use `raceWith` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.raceWith
undefined

**Signature**

```ts
export declare const raceWith: {
  <A1, E1, R1, E, A, A2, E2, R2, A3, E3, R3>(
    other: Effect<A1, E1, R1>,
    options: {
      readonly onSelfDone: (exit: Exit.Exit<A, E>, fiber: Fiber.Fiber<A1, E1>) => Effect<A2, E2, R2>
      readonly onOtherDone: (exit: Exit.Exit<A1, E1>, fiber: Fiber.Fiber<A, E>) => Effect<A3, E3, R3>
    }
  ): <R>(self: Effect<A, E, R>) => Effect<A2 | A3, E2 | E3, R1 | R2 | R3 | R>
  <A, E, R, A1, E1, R1, A2, E2, R2, A3, E3, R3>(
    self: Effect<A, E, R>,
    other: Effect<A1, E1, R1>,
    options: {
      readonly onSelfDone: (exit: Exit.Exit<A, E>, fiber: Fiber.Fiber<A1, E1>) => Effect<A2, E2, R2>
      readonly onOtherDone: (exit: Exit.Exit<A1, E1>, fiber: Fiber.Fiber<A, E>) => Effect<A3, E3, R3>
    }
  ): Effect<A2 | A3, E2 | E3, R | R1 | R2 | R3>
}
```

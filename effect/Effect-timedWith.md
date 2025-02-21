# timedWith

Executes an effect and measures its execution time using a custom clock.

**Details**

This function extends the functionality of {@link timed} by allowing you to
specify a custom clock for measuring the execution duration. The provided
effect (`nanoseconds`) represents the clock and should return the current
time in nanoseconds. The timing information is computed using this custom
clock instead of the default system clock.

To import and use `timedWith` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.timedWith
```

**Signature**

```ts
export declare const timedWith: {
  <E1, R1>(
    nanoseconds: Effect<bigint, E1, R1>
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<[Duration.Duration, A], E1 | E, R1 | R>
  <A, E, R, E1, R1>(
    self: Effect<A, E, R>,
    nanoseconds: Effect<bigint, E1, R1>
  ): Effect<[Duration.Duration, A], E | E1, R | R1>
}
```

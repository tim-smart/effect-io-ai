# timedWith

A more powerful variation of `timed` that allows specifying the clock.

To import and use `timedWith` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.timedWith
```

**Signature**

```ts
export declare const timedWith: {
  <R1, E1>(
    nanoseconds: Effect<R1, E1, bigint>
  ): <R, E, A>(self: Effect<R, E, A>) => Effect<R1 | R, E1 | E, [Duration.Duration, A]>
  <R, E, A, R1, E1>(
    self: Effect<R, E, A>,
    nanoseconds: Effect<R1, E1, bigint>
  ): Effect<R | R1, E | E1, [Duration.Duration, A]>
}
```

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
  <E1, R1>(
    nanoseconds: Effect<bigint, E1, R1>
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<[Duration.Duration, A], E1 | E, R1 | R>
  <A, E, R, E1, R1>(
    self: Effect<A, E, R>,
    nanoseconds: Effect<bigint, E1, R1>
  ): Effect<[Duration.Duration, A], E | E1, R | R1>
}
```

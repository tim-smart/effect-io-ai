# ifEffect

Runs `onTrue` if the result of `self` is `true` and `onFalse` otherwise.

To import and use `ifEffect` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.ifEffect
```

**Signature**

```ts
export declare const ifEffect: {
  <R1, R2, E1, E2, A, A1>(onTrue: Effect<R1, E1, A>, onFalse: Effect<R2, E2, A1>): <R, E>(
    self: Effect<R, E, boolean>
  ) => Effect<R1 | R2 | R, E1 | E2 | E, A | A1>
  <R, E, R1, R2, E1, E2, A, A1>(
    self: Effect<R, E, boolean>,
    onTrue: Effect<R1, E1, A>,
    onFalse: Effect<R2, E2, A1>
  ): Effect<R | R1 | R2, E | E1 | E2, A | A1>
}
```

# tryOrElse

Executed `that` in case `self` fails with a `Cause` that doesn't contain
defects, executes `success` in case of successes

To import and use `tryOrElse` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.tryOrElse
```

**Signature**

```ts
export declare const tryOrElse: {
  <R2, E2, A2, A, R3, E3, A3>(that: LazyArg<Effect<R2, E2, A2>>, onSuccess: (a: A) => Effect<R3, E3, A3>): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R3 | R, E2 | E3, A2 | A3>
  <R, E, A, R2, E2, A2, R3, E3, A3>(
    self: Effect<R, E, A>,
    that: LazyArg<Effect<R2, E2, A2>>,
    onSuccess: (a: A) => Effect<R3, E3, A3>
  ): Effect<R | R2 | R3, E2 | E3, A2 | A3>
}
```
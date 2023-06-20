# onError

Runs the specified effect if this effect fails, providing the error to the
effect if it exists. The provided effect will not be interrupted.

To import and use `onError` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.onError
```

**Signature**

```ts
export declare const onError: {
  <E, R2, X>(cleanup: (cause: Cause.Cause<E>) => Effect<R2, never, X>): <R, A>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E, A>
  <R, A, E, R2, X>(self: Effect<R, E, A>, cleanup: (cause: Cause.Cause<E>) => Effect<R2, never, X>): Effect<
    R | R2,
    E,
    A
  >
}
```

# tapDefect

Returns an effect that effectually "peeks" at the defect of this effect.

To import and use `tapDefect` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.tapDefect
```

**Signature**

```ts
export declare const tapDefect: {
  <R2, E2, X>(f: (cause: Cause.Cause<never>) => Effect<R2, E2, X>): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E2 | E, A>
  <R, E, A, R2, E2, X>(self: Effect<R, E, A>, f: (cause: Cause.Cause<never>) => Effect<R2, E2, X>): Effect<
    R | R2,
    E | E2,
    A
  >
}
```

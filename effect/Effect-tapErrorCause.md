# tapErrorCause

Returns an effect that effectually "peeks" at the cause of the failure of
this effect.

To import and use `tapErrorCause` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.tapErrorCause
```

**Signature**

```ts
export declare const tapErrorCause: {
  <E, XE extends E, R2, E2, X>(f: (cause: Cause.Cause<XE>) => Effect<R2, E2, X>): <R, A>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E | E2, A>
  <R, E, A, XE extends E, R2, E2, X>(self: Effect<R, E, A>, f: (cause: Cause.Cause<XE>) => Effect<R2, E2, X>): Effect<
    R | R2,
    E | E2,
    A
  >
}
```

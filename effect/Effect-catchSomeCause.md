# catchSomeCause

Recovers from some or all of the error cases with provided cause.

To import and use `catchSomeCause` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.catchSomeCause
```

**Signature**

```ts
export declare const catchSomeCause: {
  <E, R2, E2, A2>(f: (cause: Cause.Cause<E>) => Option.Option<Effect<R2, E2, A2>>): <R, A>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E | E2, A2 | A>
  <R, E, A, R2, E2, A2>(self: Effect<R, E, A>, f: (cause: Cause.Cause<E>) => Option.Option<Effect<R2, E2, A2>>): Effect<
    R | R2,
    E | E2,
    A | A2
  >
}
```

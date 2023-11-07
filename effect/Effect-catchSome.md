# catchSome

Recovers from some or all of the error cases.

To import and use `catchSome` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.catchSome
```

**Signature**

```ts
export declare const catchSome: {
  <E, R2, E2, A2>(pf: (e: E) => Option.Option<Effect<R2, E2, A2>>): <R, A>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E | E2, A2 | A>
  <R, A, E, R2, E2, A2>(self: Effect<R, E, A>, pf: (e: E) => Option.Option<Effect<R2, E2, A2>>): Effect<
    R | R2,
    E | E2,
    A | A2
  >
}
```

# continueOrFailEffect

Fail with the specifed `error` if the supplied partial function does not
match, otherwise continue with the returned value.

To import and use `continueOrFailEffect` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.continueOrFailEffect
```

**Signature**

```ts
export declare const continueOrFailEffect: {
  <E1, A, R2, E2, A2>(error: LazyArg<E1>, pf: (a: A) => Option.Option<Effect<R2, E2, A2>>): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E1 | E2 | E, A2>
  <R, E, A, E1, R2, E2, A2>(
    self: Effect<R, E, A>,
    error: LazyArg<E1>,
    pf: (a: A) => Option.Option<Effect<R2, E2, A2>>
  ): Effect<R | R2, E | E1 | E2, A2>
}
```

# continueOrFail

Fail with the specifed `error` if the supplied partial function does not
match, otherwise continue with the returned value.

To import and use `continueOrFail` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.continueOrFail
```

**Signature**

```ts
export declare const continueOrFail: {
  <E1, A, A2>(error: LazyArg<E1>, pf: (a: A) => Option.Option<A2>): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R, E1 | E, A2>
  <R, E, A, E1, A2>(self: Effect<R, E, A>, error: LazyArg<E1>, pf: (a: A) => Option.Option<A2>): Effect<R, E | E1, A2>
}
```

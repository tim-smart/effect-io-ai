# unrefineWith

Takes some fiber failures and converts them into errors, using the specified
function to convert the `E` into an `E1 | E2`.

To import and use `unrefineWith` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.unrefineWith
```

**Signature**

```ts
export declare const unrefineWith: {
  <E, E1, E2>(pf: (u: unknown) => Option.Option<E1>, f: (e: E) => E2): <R, A>(
    self: Effect<R, E, A>
  ) => Effect<R, E1 | E2, A>
  <R, E, A, E1, E2>(self: Effect<R, E, A>, pf: (u: unknown) => Option.Option<E1>, f: (e: E) => E2): Effect<
    R,
    E1 | E2,
    A
  >
}
```

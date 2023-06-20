# zipWithPar

Sequentially zips this effect with the specified effect using the
specified combiner function.

To import and use `zipWithPar` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.zipWithPar
```

**Signature**

```ts
export declare const zipWithPar: {
  <R2, E2, A2, A, B>(that: Effect<R2, E2, A2>, f: (a: A, b: A2) => B): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E2 | E, B>
  <R, E, A, R2, E2, A2, B>(self: Effect<R, E, A>, that: Effect<R2, E2, A2>, f: (a: A, b: A2) => B): Effect<
    R | R2,
    E | E2,
    B
  >
}
```

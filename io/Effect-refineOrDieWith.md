# refineOrDieWith

Keeps some of the errors, and terminates the fiber with the rest, using
the specified function to convert the `E` into a defect.

To import and use `refineOrDieWith` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.refineOrDieWith
```

**Signature**

```ts
export declare const refineOrDieWith: {
  <E, E1>(pf: (e: E) => Option.Option<E1>, f: (e: E) => unknown): <R, A>(self: Effect<R, E, A>) => Effect<R, E1, A>
  <R, E, A, E1>(self: Effect<R, E, A>, pf: (e: E) => Option.Option<E1>, f: (e: E) => unknown): Effect<R, E1, A>
}
```
# refineTagOrDieWith

Keeps only the error matching the specified tag, and terminates the fiber
with the rest, using the specified function to convert the `E` into a defect.

To import and use `refineTagOrDieWith` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.refineTagOrDieWith
```

**Signature**

```ts
export declare const refineTagOrDieWith: {
  <R, E extends { _tag: string }, A, K extends E['_tag'] & string>(k: K, f: (e: Exclude<E, { _tag: K }>) => unknown): (
    self: Effect<R, E, A>
  ) => Effect<R, Extract<E, { _tag: K }>, A>
  <R, E extends { _tag: string }, A, K extends E['_tag'] & string>(
    self: Effect<R, E, A>,
    k: K,
    f: (e: Exclude<E, { _tag: K }>) => unknown
  ): Effect<R, Extract<E, { _tag: K }>, A>
}
```

# refineTagOrDie

Keeps only the error matching the specified tag, and terminates the fiber
with the rest

To import and use `refineTagOrDie` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.refineTagOrDie
```

**Signature**

```ts
export declare const refineTagOrDie: {
  <R, E extends { _tag: string }, A, K extends E['_tag'] & string>(k: K): (
    self: Effect<R, E, A>
  ) => Effect<R, Extract<E, { _tag: K }>, A>
  <R, E extends { _tag: string }, A, K extends E['_tag'] & string>(self: Effect<R, E, A>, k: K): Effect<
    R,
    Extract<E, { _tag: K }>,
    A
  >
}
```

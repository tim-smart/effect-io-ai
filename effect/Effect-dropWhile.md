# dropWhile

Drops all elements so long as the predicate returns true.

To import and use `dropWhile` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.dropWhile
```

**Signature**

```ts
export declare const dropWhile: {
  <B extends A, R, E, A = B>(
    predicate: (a: A, i: number) => Effect<R, E, boolean>
  ): (elements: Iterable<B>) => Effect<R, E, B[]>
  <A, R, E>(elements: Iterable<A>, predicate: (a: A, i: number) => Effect<R, E, boolean>): Effect<R, E, A[]>
}
```

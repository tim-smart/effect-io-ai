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
  <A, R, E>(
    predicate: (a: NoInfer<A>, i: number) => Effect<R, E, boolean>
  ): (elements: Iterable<A>) => Effect<R, E, A[]>
  <A, R, E>(elements: Iterable<A>, predicate: (a: A, i: number) => Effect<R, E, boolean>): Effect<R, E, A[]>
}
```

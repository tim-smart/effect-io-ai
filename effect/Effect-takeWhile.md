# takeWhile

Takes all elements so long as the effectual predicate returns true.

To import and use `takeWhile` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.takeWhile
```

**Signature**

```ts
export declare const takeWhile: {
  <R, E, A>(predicate: (a: A, i: number) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, A[]>
  <R, E, A>(elements: Iterable<A>, predicate: (a: A, i: number) => Effect<R, E, boolean>): Effect<R, E, A[]>
}
```

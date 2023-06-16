# takeWhile

Takes all elements so long as the effectual predicate returns true.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const takeWhile: {
  <R, E, A>(predicate: (a: A) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, A[]>
  <R, E, A>(elements: Iterable<A>, predicate: (a: A) => Effect<R, E, boolean>): Effect<R, E, A[]>
}
```

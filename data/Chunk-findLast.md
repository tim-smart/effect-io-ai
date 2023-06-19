# findLast

Find the last element which satisfies a predicate function

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const findLast: {
  <A, B extends A>(f: Refinement<A, B>): (self: Chunk<A>) => Option<B>
  <A>(f: Predicate<A>): (self: Chunk<A>) => Option<A>
  <A, B extends A>(self: Chunk<A>, f: Refinement<A, B>): Option<B>
  <A>(self: Chunk<A>, f: Predicate<A>): Option<A>
}
```

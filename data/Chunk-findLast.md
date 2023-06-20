# findLast

Find the last element which satisfies a predicate function

To import and use `findLast` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.findLast
```

**Signature**

```ts
export declare const findLast: {
  <A, B extends A>(f: Refinement<A, B>): (self: Chunk<A>) => Option<B>
  <A>(f: Predicate<A>): (self: Chunk<A>) => Option<A>
  <A, B extends A>(self: Chunk<A>, f: Refinement<A, B>): Option<B>
  <A>(self: Chunk<A>, f: Predicate<A>): Option<A>
}
```

# findFirst

Find the first element which satisfies a predicate (or a refinement) function.

To import and use `findFirst` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.findFirst
```

**Signature**

```ts
export declare const findFirst: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: Chunk<A>) => Option<B>
  <A>(predicate: Predicate<A>): (self: Chunk<A>) => Option<A>
  <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): Option<B>
  <A>(self: Chunk<A>, predicate: Predicate<A>): Option<A>
}
```

# findFirst

Returns the first element that satisfies the specified
predicate, or `None` if no such element exists.

To import and use `findFirst` from the "Chunk" module:

```ts
import * as Chunk from 'effect/Chunk'

// Can be accessed like this
Chunk.findFirst
```

**Signature**

```ts
export declare const findFirst: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: Chunk<A>) => Option<B>
  <A>(predicate: Predicate<A>): <B extends A>(self: Chunk<B>) => Option<B>
  <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): Option<B>
  <B extends A, A>(self: Chunk<B>, predicate: Predicate<A>): Option<B>
}
```

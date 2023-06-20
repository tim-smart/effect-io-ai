# some

Check if a predicate holds true for any `Chunk` member.

To import and use `some` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.some
```

**Signature**

```ts
export declare const some: {
  <A>(f: Predicate<A>): (self: Chunk<A>) => boolean
  <A>(self: Chunk<A>, f: Predicate<A>): boolean
}
```

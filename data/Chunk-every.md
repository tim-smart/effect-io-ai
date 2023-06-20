# every

Check if a predicate holds true for every `Chunk` member.

To import and use `every` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.every
```

**Signature**

```ts
export declare const every: {
  <A>(f: Predicate<A>): (self: Chunk<A>) => boolean
  <A>(self: Chunk<A>, f: Predicate<A>): boolean
}
```

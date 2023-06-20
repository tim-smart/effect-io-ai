# correspondsTo

Compares the two chunks of equal length using the specified function

To import and use `correspondsTo` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.correspondsTo
```

**Signature**

```ts
export declare const correspondsTo: {
  <A, B>(that: Chunk<B>, f: (a: A, b: B) => boolean): (self: Chunk<A>) => boolean
  <A, B>(self: Chunk<A>, that: Chunk<B>, f: (a: A, b: B) => boolean): boolean
}
```

# cross

Zips this chunk crosswise with the specified chunk.

To import and use `cross` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.cross
```

**Signature**

```ts
export declare const cross: {
  <B>(that: Chunk<B>): <A>(self: Chunk<A>) => Chunk<readonly [A, B]>
  <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<readonly [A, B]>
}
```
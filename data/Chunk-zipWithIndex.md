# zipWithIndex

Zips this chunk with the index of every element, starting from the initial
index value.

To import and use `zipWithIndex` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.zipWithIndex
```

**Signature**

```ts
export declare const zipWithIndex: <A>(self: Chunk<A>) => Chunk<readonly [A, number]>
```

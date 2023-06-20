# dedupeAdjacent

Deduplicates adjacent elements that are identical.

To import and use `dedupeAdjacent` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.dedupeAdjacent
```

**Signature**

```ts
export declare const dedupeAdjacent: <A>(self: Chunk<A>) => Chunk<A>
```

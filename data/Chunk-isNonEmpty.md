# isNonEmpty

Determines if the chunk is not empty.

To import and use `isNonEmpty` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.isNonEmpty
```

**Signature**

```ts
export declare const isNonEmpty: <A>(self: Chunk<A>) => self is NonEmptyChunk<A>
```

# flatten

Flattens a chunk of chunks into a single chunk by concatenating all chunks.

To import and use `flatten` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.flatten
```

**Signature**

```ts
export declare const flatten: <A>(self: Chunk<Chunk<A>>) => Chunk<A>
```

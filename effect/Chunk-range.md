# range

Create a non empty `Chunk` containing a range of integers, including both endpoints.

To import and use `range` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.range
```

**Signature**

```ts
export declare const range: (start: number, end: number) => NonEmptyChunk<number>
```

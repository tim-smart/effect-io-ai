# unsafeHead

Returns the first element of this chunk.

It will throw an error if the chunk is empty.

To import and use `unsafeHead` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.unsafeHead
```

**Signature**

```ts
export declare const unsafeHead: <A>(self: Chunk<A>) => A
```

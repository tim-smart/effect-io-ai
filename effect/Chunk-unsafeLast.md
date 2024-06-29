# unsafeLast

Returns the last element of this chunk.

It will throw an error if the chunk is empty.

To import and use `unsafeLast` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.unsafeLast
```

**Signature**

```ts
export declare const unsafeLast: <A>(self: Chunk<A>) => A
```

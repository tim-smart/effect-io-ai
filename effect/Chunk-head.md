# head

Returns the first element of this chunk if it exists.

To import and use `head` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.head
```

**Signature**

```ts
export declare const head: <A>(self: Chunk<A>) => Option<A>
```

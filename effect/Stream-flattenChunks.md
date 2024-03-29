# flattenChunks

Submerges the chunks carried by this stream into the stream's structure,
while still preserving them.

To import and use `flattenChunks` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.flattenChunks
```

**Signature**

```ts
export declare const flattenChunks: <A, E, R>(self: Stream<Chunk.Chunk<A>, E, R>) => Stream<A, E, R>
```

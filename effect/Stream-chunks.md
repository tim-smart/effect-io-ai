# chunks

Exposes the underlying chunks of the stream as a stream of chunks of
elements.

To import and use `chunks` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.chunks
undefined

**Signature**

```ts
export declare const chunks: <A, E, R>(self: Stream<A, E, R>) => Stream<Chunk.Chunk<A>, E, R>
```

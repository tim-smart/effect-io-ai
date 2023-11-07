# chunks

Exposes the underlying chunks of the stream as a stream of chunks of
elements.

To import and use `chunks` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.chunks
```

**Signature**

```ts
export declare const chunks: <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, Chunk.Chunk<A>>
```

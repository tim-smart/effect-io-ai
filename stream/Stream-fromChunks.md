# fromChunks

Creates a stream from an arbitrary number of chunks.

To import and use `fromChunks` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.fromChunks
```

**Signature**

```ts
export declare const fromChunks: <A>(...chunks: Chunk.Chunk<A>[]) => Stream<never, never, A>
```

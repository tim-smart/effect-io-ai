# fromChunk

Creates a stream from a `Chunk` of values.

To import and use `fromChunk` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromChunk
```

**Signature**

```ts
export declare const fromChunk: <A>(chunk: Chunk.Chunk<A>) => Stream<never, never, A>
```

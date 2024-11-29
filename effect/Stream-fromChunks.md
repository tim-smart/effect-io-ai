# fromChunks

Creates a stream from an arbitrary number of chunks.

To import and use `fromChunks` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromChunks
undefined

**Example**

```ts
import { Chunk, Effect, Stream } from "effect"

// Creating a stream with values from multiple Chunks
const stream = Stream.fromChunks(Chunk.make(1, 2, 3), Chunk.make(4, 5, 6))

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 1, 2, 3, 4, 5, 6 ] }
```

**Signature**

```ts
export declare const fromChunks: <A>(...chunks: Array<Chunk.Chunk<A>>) => Stream<A>
```

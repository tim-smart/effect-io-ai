# fromChunk

Creates a stream from a `Chunk` of values.

To import and use `fromChunk` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromChunk
undefined

**Example**

```ts
import { Chunk, Effect, Stream } from "effect"

// Creating a stream with values from a single Chunk
const stream = Stream.fromChunk(Chunk.make(1, 2, 3))

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 1, 2, 3 ] }
```

**Signature**

```ts
export declare const fromChunk: <A>(chunk: Chunk.Chunk<A>) => Stream<A>
```

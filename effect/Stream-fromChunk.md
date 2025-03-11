## fromChunk

Creates a stream from a `Chunk` of values.

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
declare const fromChunk: <A>(chunk: Chunk.Chunk<A>) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1942)

Since v2.0.0
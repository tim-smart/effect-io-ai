Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromChunks

Creates a stream from an arbitrary number of chunks.

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
declare const fromChunks: <A>(...chunks: Array<Chunk.Chunk<A>>) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1999)

Since v2.0.0
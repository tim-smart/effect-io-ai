# concatAll

Concatenates all of the streams in the chunk to one stream.

To import and use `concatAll` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.concatAll
```

**Example**

```ts
import { Chunk, Effect, Stream } from "effect"

const s1 = Stream.make(1, 2, 3)
const s2 = Stream.make(4, 5)
const s3 = Stream.make(6, 7, 8)

const stream = Stream.concatAll(Chunk.make(s1, s2, s3))

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// {
//   _id: 'Chunk',
//   values: [
//     1, 2, 3, 4,
//     5, 6, 7, 8
//   ]
// }
```

**Signature**

```ts
export declare const concatAll: <A, E, R>(streams: Chunk.Chunk<Stream<A, E, R>>) => Stream<A, E, R>
```

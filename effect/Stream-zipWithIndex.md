# zipWithIndex

Zips this stream together with the index of elements.

To import and use `zipWithIndex` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipWithIndex
undefined

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.make("Mary", "James", "Robert", "Patricia")

const indexedStream = Stream.zipWithIndex(stream)

// Effect.runPromise(Stream.runCollect(indexedStream)).then(console.log)
// {
//   _id: 'Chunk',
//   values: [ [ 'Mary', 0 ], [ 'James', 1 ], [ 'Robert', 2 ], [ 'Patricia', 3 ] ]
// }
```

**Signature**

```ts
export declare const zipWithIndex: <A, E, R>(self: Stream<A, E, R>) => Stream<[A, number], E, R>
```

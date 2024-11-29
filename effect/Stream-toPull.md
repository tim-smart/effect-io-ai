# toPull

Returns in a scope a ZIO effect that can be used to repeatedly pull chunks
from the stream. The pull effect fails with None when the stream is
finished, or with Some error if it fails, otherwise it returns a chunk of
the stream's output.

To import and use `toPull` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.toPull
undefined

**Example**

```ts
import { Effect, Stream } from "effect"

// Simulate a chunked stream
const stream = Stream.fromIterable([1, 2, 3, 4, 5]).pipe(Stream.rechunk(2))

const program = Effect.gen(function* () {
  // Create an effect to get data chunks from the stream
  const getChunk = yield* Stream.toPull(stream)

  // Continuously fetch and process chunks
  while (true) {
    const chunk = yield* getChunk
    console.log(chunk)
  }
})

// Effect.runPromise(Effect.scoped(program)).then(console.log, console.error)
// { _id: 'Chunk', values: [ 1, 2 ] }
// { _id: 'Chunk', values: [ 3, 4 ] }
// { _id: 'Chunk', values: [ 5 ] }
// (FiberFailure) Error: {
//   "_id": "Option",
//   "_tag": "None"
// }
```

**Signature**

```ts
export declare const toPull: <A, E, R>(
  self: Stream<A, E, R>
) => Effect.Effect<Effect.Effect<Chunk.Chunk<A>, Option.Option<E>, R>, never, Scope.Scope | R>
```

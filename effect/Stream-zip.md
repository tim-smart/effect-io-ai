# zip

Zips this stream with another point-wise and emits tuples of elements from
both streams.

The new stream will end when one of the sides ends.

To import and use `zip` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.zip
undefined

**Example**

```ts
import { Effect, Stream } from "effect"

// We create two streams and zip them together.
const stream = Stream.zip(Stream.make(1, 2, 3, 4, 5, 6), Stream.make("a", "b", "c"))

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ [ 1, 'a' ], [ 2, 'b' ], [ 3, 'c' ] ] }
```

**Signature**

```ts
export declare const zip: {
  <A2, E2, R2>(that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<[A, A2], E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<[A, A2], E | E2, R | R2>
}
```

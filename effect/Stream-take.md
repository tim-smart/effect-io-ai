# take

Takes the specified number of elements from this stream.

To import and use `take` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.take
```

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.take(
  Stream.iterate(0, (n) => n + 1),
  5
)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 0, 1, 2, 3, 4 ] }
```

**Signature**

```ts
export declare const take: {
  (n: number): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
  <A, E, R>(self: Stream<A, E, R>, n: number): Stream<A, E, R>
}
```

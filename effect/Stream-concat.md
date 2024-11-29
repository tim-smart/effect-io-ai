# concat

Concatenates the specified stream with this stream, resulting in a stream
that emits the elements from this stream and then the elements from the
specified stream.

To import and use `concat` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.concat
undefined

**Example**

```ts
import { Effect, Stream } from "effect"

const s1 = Stream.make(1, 2, 3)
const s2 = Stream.make(4, 5)

const stream = Stream.concat(s1, s2)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 1, 2, 3, 4, 5 ] }
```

**Signature**

```ts
export declare const concat: {
  <A2, E2, R2>(that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<A | A2, E | E2, R | R2>
}
```

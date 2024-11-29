# takeRight

Takes the last specified number of elements from this stream.

To import and use `takeRight` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.takeRight
undefined

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.takeRight(Stream.make(1, 2, 3, 4, 5, 6), 3)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 4, 5, 6 ] }
```

**Signature**

```ts
export declare const takeRight: {
  (n: number): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
  <A, E, R>(self: Stream<A, E, R>, n: number): Stream<A, E, R>
}
```

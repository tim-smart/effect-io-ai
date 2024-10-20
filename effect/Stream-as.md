# as

Maps the success values of this stream to the specified constant value.

To import and use `as` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.as
```

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.range(1, 5).pipe(Stream.as(null))

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ null, null, null, null, null ] }
```

**Signature**

```ts
export declare const as: {
  <B>(value: B): <A, E, R>(self: Stream<A, E, R>) => Stream<B, E, R>
  <A, E, R, B>(self: Stream<A, E, R>, value: B): Stream<B, E, R>
}
```

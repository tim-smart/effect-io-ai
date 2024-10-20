# changes

Returns a new stream that only emits elements that are not equal to the
previous element emitted, using natural equality to determine whether two
elements are equal.

To import and use `changes` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.changes
```

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.make(1, 1, 1, 2, 2, 3, 4).pipe(Stream.changes)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 1, 2, 3, 4 ] }
```

**Signature**

```ts
export declare const changes: <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
```

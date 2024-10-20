# drain

Converts this stream to a stream that executes its effects but emits no
elements. Useful for sequencing effects using streams:

To import and use `drain` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.drain
```

**Example**

```ts
import { Effect, Stream } from "effect"

// We create a stream and immediately drain it.
const stream = Stream.range(1, 6).pipe(Stream.drain)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [] }
```

**Signature**

```ts
export declare const drain: <A, E, R>(self: Stream<A, E, R>) => Stream<never, E, R>
```

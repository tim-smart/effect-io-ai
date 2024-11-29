# make

Creates a stream from an sequence of values.

To import and use `make` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.make
undefined

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 1, 2, 3 ] }
```

**Signature**

```ts
export declare const make: <As extends Array<any>>(...as: As) => Stream<As[number]>
```

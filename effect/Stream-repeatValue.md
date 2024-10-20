# repeatValue

Repeats the provided value infinitely.

To import and use `repeatValue` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.repeatValue
```

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.repeatValue(0)

// Effect.runPromise(Stream.runCollect(stream.pipe(Stream.take(5)))).then(console.log)
// { _id: 'Chunk', values: [ 0, 0, 0, 0, 0 ] }
```

**Signature**

```ts
export declare const repeatValue: <A>(value: A) => Stream<A>
```

# succeed

Creates a single-valued pure stream.

To import and use `succeed` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.succeed
```

**Example**

```ts
import { Effect, Stream } from "effect"

// A Stream with a single number
const stream = Stream.succeed(3)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 3 ] }
```

**Signature**

```ts
export declare const succeed: <A>(value: A) => Stream<A>
```

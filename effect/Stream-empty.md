# empty

The empty stream.

To import and use `empty` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.empty
```

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.empty

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [] }
```

**Signature**

```ts
export declare const empty: Stream<never, never, never>
```

# void

A stream that contains a single `void` value.

To import and use `void` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.void
undefined

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.void

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ undefined ] }
```

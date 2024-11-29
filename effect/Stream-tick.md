# tick

A stream that emits void values spaced by the specified duration.

To import and use `tick` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.tick
undefined

**Example**

```ts
import { Effect, Stream } from "effect"

let last = Date.now()
const log = (message: string) =>
  Effect.sync(() => {
    const end = Date.now()
    console.log(`${message} after ${end - last}ms`)
    last = end
  })

const stream = Stream.tick("1 seconds").pipe(Stream.tap(() => log("tick")))

// Effect.runPromise(Stream.runCollect(stream.pipe(Stream.take(5)))).then(console.log)
// tick after 4ms
// tick after 1003ms
// tick after 1001ms
// tick after 1002ms
// tick after 1002ms
// { _id: 'Chunk', values: [ undefined, undefined, undefined, undefined, undefined ] }
```

**Signature**

```ts
export declare const tick: (interval: Duration.DurationInput) => Stream<void>
```

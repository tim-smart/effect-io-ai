## debounce

Delays the emission of values by holding new values for a set duration. If
no new values arrive during that time the value is emitted, however if a
new value is received during the holding period the previous value is
discarded and the process is repeated with the new value.

This operator is useful if you have a stream of "bursty" events which
eventually settle down and you only need the final event of the burst. For
example, a search engine may only want to initiate a search after a user
has paused typing so as to not prematurely recommend results.

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

const stream = Stream.make(1, 2, 3).pipe(
  Stream.concat(
    Stream.fromEffect(Effect.sleep("200 millis").pipe(Effect.as(4))) // Emit 4 after 200 ms
  ),
  Stream.concat(Stream.make(5, 6)), // Continue with more rapid values
  Stream.concat(
    Stream.fromEffect(Effect.sleep("150 millis").pipe(Effect.as(7))) // Emit 7 after 150 ms
  ),
  Stream.concat(Stream.make(8)),
  Stream.tap((n) => log(`Received ${n}`)),
  Stream.debounce("100 millis"), // Only emit values after a pause of at least 100 milliseconds,
  Stream.tap((n) => log(`> Emitted ${n}`))
)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// Received 1 after 5ms
// Received 2 after 2ms
// Received 3 after 0ms
// > Emitted 3 after 104ms
// Received 4 after 99ms
// Received 5 after 1ms
// Received 6 after 0ms
// > Emitted 6 after 101ms
// Received 7 after 50ms
// Received 8 after 1ms
// > Emitted 8 after 101ms
// { _id: 'Chunk', values: [ 3, 6, 8 ] }
```

**Signature**

```ts
declare const debounce: { (duration: Duration.DurationInput): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, duration: Duration.DurationInput): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1238)

Since v2.0.0
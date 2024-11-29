# buffer

Allows a faster producer to progress independently of a slower consumer by
buffering up to `capacity` elements in a queue.

Note: This combinator destroys the chunking structure. It's recommended to
use rechunk afterwards. Additionally, prefer capacities that are powers
of 2 for better performance.

To import and use `buffer` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.buffer
undefined

**Example**

```ts
import { Console, Effect, Schedule, Stream } from "effect"

const stream = Stream.range(1, 10).pipe(
  Stream.tap((n) => Console.log(`before buffering: ${n}`)),
  Stream.buffer({ capacity: 4 }),
  Stream.tap((n) => Console.log(`after buffering: ${n}`)),
  Stream.schedule(Schedule.spaced("5 seconds"))
)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// before buffering: 1
// before buffering: 2
// before buffering: 3
// before buffering: 4
// before buffering: 5
// before buffering: 6
// after buffering: 1
// after buffering: 2
// before buffering: 7
// after buffering: 3
// before buffering: 8
// after buffering: 4
// before buffering: 9
// after buffering: 5
// before buffering: 10
// ...
```

**Signature**

```ts
export declare const buffer: {
  (
    options:
      | { readonly capacity: "unbounded" }
      | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined }
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
  <A, E, R>(
    self: Stream<A, E, R>,
    options:
      | { readonly capacity: "unbounded" }
      | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined }
  ): Stream<A, E, R>
}
```

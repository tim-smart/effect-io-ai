# onEnd

Adds an effect to be executed at the end of the stream.

To import and use `onEnd` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.onEnd
undefined

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3).pipe(
  Stream.map((n) => n * 2),
  Stream.tap((n) => Console.log(`after mapping: ${n}`)),
  Stream.onEnd(Console.log("Stream ended"))
)

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// after mapping: 2
// after mapping: 4
// after mapping: 6
// Stream ended
// { _id: 'Chunk', values: [ 2, 4, 6 ] }
```

**Signature**

```ts
export declare const onEnd: {
  <_, E2, R2>(effect: Effect.Effect<_, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>
  <A, E, R, _, E2, R2>(self: Stream<A, E, R>, effect: Effect.Effect<_, E2, R2>): Stream<A, E | E2, R | R2>
}
```

Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromQueue

Creates a stream from a queue of values.

**Options**

- `maxChunkSize`: The maximum number of queued elements to put in one chunk in the stream
- `shutdown`: If `true`, the queue will be shutdown after the stream is evaluated (defaults to `false`)

**Example**

```ts
import { Console, Effect, Queue, Stream } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.unbounded<number>()
  yield* Queue.offer(queue, 1)
  yield* Queue.offer(queue, 2)
  yield* Queue.offer(queue, 3)
  yield* Queue.shutdown(queue)

  const stream = Stream.fromQueue(queue)
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const fromQueue: <A, E>(queue: Queue.Dequeue<A, E>) => Stream<A, Exclude<E, Cause.Done>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1192)

Since v4.0.0
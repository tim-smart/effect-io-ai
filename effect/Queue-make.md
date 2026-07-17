Package: `effect`<br />
Module: `Queue`<br />

## Queue.make

Creates a `Queue` with optional capacity and overflow strategy.

**Details**

By default the queue is unbounded and uses the `"suspend"` strategy. Provide
`capacity` for a bounded queue and choose `"suspend"`, `"dropping"`, or
`"sliding"` to control what happens when the queue is full. The returned
queue can be offered to, taken from, failed, ended, interrupted, or shut down.

**Example** (Creating queues)

```ts
import { Cause, Effect, Queue } from "effect"

Effect.gen(function*() {
  const queue = yield* Queue.make<number, string | Cause.Done>()

  // add messages to the queue
  yield* Queue.offer(queue, 1)
  yield* Queue.offer(queue, 2)
  yield* Queue.offerAll(queue, [3, 4, 5])

  // take messages from the queue
  const messages = yield* Queue.takeAll(queue)
  console.log(messages) // [1, 2, 3, 4, 5]

  // signal that the queue is done
  yield* Queue.end(queue)
  const done = yield* Effect.flip(Queue.take(queue))
  console.log(Cause.isDone(done)) // true

  // signal that another queue has failed
  const failedQueue = yield* Queue.make<number, string>()
  const failed = yield* Queue.fail(failedQueue, "boom")
  console.log(failed) // true
})
```

**Signature**

```ts
declare const make: <A, E = never>(options?: { readonly capacity?: number | undefined; readonly strategy?: "suspend" | "dropping" | "sliding" | undefined; } | undefined) => Effect<Queue<A, E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L441)

Since v4.0.0
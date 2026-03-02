Package: `effect`<br />
Module: `Queue`<br />

## Queue.make

A `Queue` is an asynchronous queue that can be offered to and taken from.

It also supports signaling that it is done or failed.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Mailbox.make`

**Example**

```ts
import { Cause, Effect, Queue } from "effect"
import * as assert from "node:assert"

Effect.gen(function*() {
  const queue = yield* Queue.make<number, string | Cause.Done>()

  // add messages to the queue
  yield* Queue.offer(queue, 1)
  yield* Queue.offer(queue, 2)
  yield* Queue.offerAll(queue, [3, 4, 5])

  // take messages from the queue
  const messages = yield* Queue.takeAll(queue)
  assert.deepStrictEqual(messages, [1, 2, 3, 4, 5])

  // signal that the queue is done
  yield* Queue.end(queue)
  const done = yield* Effect.flip(Queue.takeAll(queue))
  assert.deepStrictEqual(done, Cause.Done)

  // signal that the queue has failed
  yield* Queue.fail(queue, "boom")
})
```

**Signature**

```ts
declare const make: <A, E = never>(options?: { readonly capacity?: number | undefined; readonly strategy?: "suspend" | "dropping" | "sliding" | undefined; } | undefined) => Effect<Queue<A, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L336)

Since v3.8.0
Package: `effect`<br />
Module: `Queue`<br />

## Queue.unbounded

Creates an unbounded queue that can grow to any size without blocking producers.

**When to use**

Use when you need producers to add messages without backpressure and accept
unbounded memory growth.

**Example** (Creating unbounded queues)

```ts
import { Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.unbounded<string>()

  // Producers can always add messages without blocking
  yield* Queue.offer(queue, "message1")
  yield* Queue.offer(queue, "message2")
  yield* Queue.offerAll(queue, ["message3", "message4", "message5"])

  // Check current size
  const size = yield* Queue.size(queue)
  console.log(size) // 5

  // Take all messages
  const messages = yield* Queue.takeAll(queue)
  console.log(messages) // ["message1", "message2", "message3", "message4", "message5"]
})
```

**Signature**

```ts
declare const unbounded: <A, E = never>() => Effect<Queue<A, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L599)

Since v2.0.0
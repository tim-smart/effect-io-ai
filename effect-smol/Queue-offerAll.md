Package: `effect`<br />
Module: `Queue`<br />

## Queue.offerAll

Adds multiple messages to the queue. Returns the remaining messages that
were not added.

**When to use**

Use when producers can submit a batch at once and need to know which messages
did not fit under the queue's capacity strategy.

**Details**

For bounded queues, this operation may suspend if the queue doesn't have
enough capacity. The operation returns an array of messages that couldn't
be added (empty array means all messages were successfully added).

**Example** (Offering multiple values)

```ts
import { Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.dropping<number>(3)

  // Try to add more messages than capacity without suspending
  const remaining1 = yield* Queue.offerAll(queue, [1, 2, 3, 4, 5])
  console.log(remaining1) // [4, 5] - couldn't fit the last 2
})
```

**Signature**

```ts
declare const offerAll: <A, E>(self: Enqueue<A, E>, messages: Iterable<A>) => Effect<Array<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L803)

Since v2.0.0
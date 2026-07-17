Package: `effect`<br />
Module: `Queue`<br />

## Queue.poll

Attempts to take one item from the queue without waiting.

**Details**

Returns `Option.some` when an item is immediately available. Returns
`Option.none` when no item is available, when the queue is done, or when the
immediate take observes a queue failure.

**Example** (Polling without blocking)

```ts
import { Effect, Option, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number>(10)

  // Poll returns Option.none if empty
  const maybe1 = yield* Queue.poll(queue)
  console.log(Option.isNone(maybe1)) // true

  // Add an item
  yield* Queue.offer(queue, 42)

  // Poll returns Option.some with the item
  const maybe2 = yield* Queue.poll(queue)
  console.log(Option.getOrNull(maybe2)) // 42
})
```

**Signature**

```ts
declare const poll: <A, E>(self: Dequeue<A, E>) => Effect<Option.Option<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L1434)

Since v2.0.0
Package: `effect`<br />
Module: `Queue`<br />

## Queue.poll

Tries to take an item from the queue without blocking.

Returns `Option.some` with the item if available, or `Option.none` if the queue is empty or done.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1230)

Since v4.0.0
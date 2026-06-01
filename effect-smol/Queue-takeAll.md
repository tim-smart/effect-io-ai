Package: `effect`<br />
Module: `Queue`<br />

## Queue.takeAll

Takes all currently available messages, waiting until at least one message
is available when the queue is empty.

**When to use**

Use when consumers should process the next non-empty batch of buffered
messages instead of repeatedly taking one message at a time.

**Details**

Returns a non-empty array. If the queue completes or fails before a message
can be taken, the effect fails with the queue's terminal error.

**Example** (Taking all available values)

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, Cause.Done>(5)

  // Add several messages
  yield* Queue.offerAll(queue, [1, 2, 3, 4, 5])

  // Take all available messages
  const messages1 = yield* Queue.takeAll(queue)
  console.log(messages1) // [1, 2, 3, 4, 5]
})
```

**Signature**

```ts
declare const takeAll: <A, E>(self: Dequeue<A, E>) => Effect<Arr.NonEmptyArray<A>, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1275)

Since v2.0.0
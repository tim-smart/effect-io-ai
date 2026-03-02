Package: `effect`<br />
Module: `Queue`<br />

## Queue.Queue

A `Queue` is an asynchronous queue that can be offered to and taken from.

It also supports signaling that it is done or failed.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Mailbox`

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  // Create a bounded queue
  const queue = yield* Queue.bounded<string>(10)

  // Producer: offer items to the queue
  yield* Queue.offer(queue, "hello")
  yield* Queue.offerAll(queue, ["world", "!"])

  // Consumer: take items from the queue
  const item1 = yield* Queue.take(queue)
  const item2 = yield* Queue.take(queue)
  const item3 = yield* Queue.take(queue)

  console.log([item1, item2, item3]) // ["hello", "world", "!"]
})
```

**Signature**

```ts
export interface Queue<in out A, in out E = never> extends Enqueue<A, E>, Dequeue<A, E> {
  readonly [TypeId]: Queue.Variance<A, E>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L213)

Since v3.8.0
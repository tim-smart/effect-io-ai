Package: `effect`<br />
Module: `Queue`<br />

## Queue.Dequeue

A `Dequeue` is a queue that can be taken from.

This interface represents the read-only part of a Queue, allowing you to take
elements from the queue but not offer elements to it.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<string, never>(10)

  // A Dequeue can only take elements
  const dequeue: Queue.Dequeue<string> = queue

  // Pre-populate the queue
  yield* Queue.offerAll(queue, ["a", "b", "c"])

  // Take elements using dequeue interface
  const item = yield* Queue.take(dequeue)
  console.log(item) // "a"
})
```

**Signature**

```ts
export interface Dequeue<out A, out E = never> extends Inspectable {
  readonly [DequeueTypeId]: Dequeue.Variance<A, E>
  readonly strategy: "suspend" | "dropping" | "sliding"
  readonly dispatcher: SchedulerDispatcher
  capacity: number
  messages: MutableList.MutableList<any>
  state: Queue.State<any, any>
  scheduleRunning: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L151)

Since v3.8.0
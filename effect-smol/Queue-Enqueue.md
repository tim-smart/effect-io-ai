Package: `effect`<br />
Module: `Queue`<br />

## Queue.Enqueue

An `Enqueue` is a queue that can be offered to.

This interface represents the write-only part of a Queue, allowing you to offer
elements to the queue but not take elements from it.

**Example**

```ts
import { Effect, Queue } from "effect"

// Function that only needs write access to a queue
const producer = (enqueue: Queue.Enqueue<string>) =>
  Effect.gen(function*() {
    yield* Queue.offer(enqueue as Queue.Queue<string>, "hello")
    yield* Queue.offerAll(enqueue as Queue.Queue<string>, ["world", "!"])
  })

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<string>(10)
  yield* producer(queue)
})
```

**Signature**

```ts
export interface Enqueue<in A, in E = never> extends Inspectable {
  readonly [EnqueueTypeId]: Enqueue.Variance<A, E>
  readonly strategy: "suspend" | "dropping" | "sliding"
  readonly dispatcher: SchedulerDispatcher
  capacity: number
  messages: MutableList.MutableList<any>
  state: Queue.State<any, any>
  scheduleRunning: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L96)

Since v4.0.0
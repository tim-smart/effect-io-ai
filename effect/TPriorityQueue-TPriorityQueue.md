## TPriorityQueue

A `TPriorityQueue` contains values of type `A` that an `Order` is defined
on. Unlike a `TQueue`, `take` returns the highest priority value (the value
that is first in the specified ordering) as opposed to the first value
offered to the queue. The ordering that elements with the same priority will
be taken from the queue is not guaranteed.

**Signature**

```ts
export interface TPriorityQueue<in out A> extends TPriorityQueue.Variance<A> {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPriorityQueue.ts#L36)

Since v2.0.0
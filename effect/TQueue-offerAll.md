Package: `effect`<br />
Module: `TQueue`<br />

## TQueue.offerAll

For Bounded TQueue: uses the `BackPressure` Strategy, places the values in
the queue and always returns true. If the queue has reached capacity, then
the fiber performing the `offerAll` will be suspended until there is room
in the queue.

For Unbounded TQueue: Places all values in the queue and returns true.

For Sliding TQueue: uses `Sliding` Strategy If there is room in the queue,
it places the values otherwise it removes the old elements and enqueues the
new ones. Always returns true.

For Dropping TQueue: uses `Dropping` Strategy, It places the values in the
queue but if there is no room it will not enqueue them and return false.

**Signature**

```ts
declare const offerAll: { <A>(iterable: Iterable<A>): (self: TEnqueue<A>) => STM.STM<boolean>; <A>(self: TEnqueue<A>, iterable: Iterable<A>): STM.STM<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L296)

Since v2.0.0
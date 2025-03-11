## offerAll

For Bounded Queue: uses the `BackPressure` Strategy, places the values in
the queue and always returns true. If the queue has reached capacity, then
the fiber performing the `offerAll` will be suspended until there is room
in the queue.

For Unbounded Queue: Places all values in the queue and returns true.

For Sliding Queue: uses `Sliding` Strategy If there is room in the queue,
it places the values otherwise it removes the old elements and enqueues the
new ones. Always returns true.

For Dropping Queue: uses `Dropping` Strategy, It places the values in the
queue but if there is no room it will not enqueue them and return false.

**Signature**

```ts
declare const offerAll: { <A>(iterable: Iterable<A>): (self: Enqueue<A>) => Effect.Effect<boolean>; <A>(self: Enqueue<A>, iterable: Iterable<A>): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L577)

Since v2.0.0
# offerAll

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

To import and use `offerAll` from the "Queue" module:

```ts
import * as Queue from '@effect/io/Queue'

// Can be accessed like this
Queue.offerAll
```

**Signature**

```ts
export declare const offerAll: {
  <A>(iterable: Iterable<A>): (self: Enqueue<A>) => (self: Enqueue<A>) => Effect.Effect<never, never, boolean>
  <A>(self: Enqueue<A>, iterable: Iterable<A>): Effect.Effect<never, never, boolean>
}
```

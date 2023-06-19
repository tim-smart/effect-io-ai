# size

Retrieves the size of the queue, which is equal to the number of elements
in the queue. This may be negative if fibers are suspended waiting for
elements to be added to the queue.

Part of the `Queue` module, imported from `@effect/io/Queue`.

**Signature**

```ts
export declare const size: <A>(self: Dequeue<A> | Enqueue<A>) => Effect.Effect<never, never, number>
```

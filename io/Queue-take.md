# take

Takes the oldest value in the queue. If the queue is empty, this will return
a computation that resumes when an item has been added to the queue.

Part of the `Queue` module, imported from `@effect/io/Queue`.

**Signature**

```ts
export declare const take: <A>(self: Dequeue<A>) => Effect.Effect<never, never, A>
```

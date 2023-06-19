# takeAll

Takes all the values in the queue and returns the values. If the queue is
empty returns an empty collection.

Part of the `Queue` module, imported from `@effect/io/Queue`.

**Signature**

```ts
export declare const takeAll: <A>(self: Dequeue<A>) => Effect.Effect<never, never, Chunk.Chunk<A>>
```

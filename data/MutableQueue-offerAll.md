# offerAll

Enqueues a collection of values into the queue.

Returns a `List` of the values that were **not** able to be enqueued.

Part of the `MutableQueue` module, imported from `@effect/data/MutableQueue`.

**Signature**

```ts
export declare const offerAll: {
  <A>(values: Iterable<A>): (self: MutableQueue<A>) => Chunk.Chunk<A>
  <A>(self: MutableQueue<A>, values: Iterable<A>): Chunk.Chunk<A>
}
```

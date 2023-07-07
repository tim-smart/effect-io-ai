# offerAll

Enqueues a collection of values into the queue.

Returns a `Chunk` of the values that were **not** able to be enqueued.

To import and use `offerAll` from the "MutableQueue" module:

```ts
import * as MutableQueue from '@effect/data/MutableQueue'

// Can be accessed like this
MutableQueue.offerAll
```

**Signature**

```ts
export declare const offerAll: {
  <A>(values: Iterable<A>): (self: MutableQueue<A>) => Chunk.Chunk<A>
  <A>(self: MutableQueue<A>, values: Iterable<A>): Chunk.Chunk<A>
}
```

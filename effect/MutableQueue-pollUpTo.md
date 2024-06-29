# pollUpTo

Dequeues up to `n` elements from the queue.

Returns a `List` of up to `n` elements.

To import and use `pollUpTo` from the "MutableQueue" module:

```ts
import * as MutableQueue from "effect/MutableQueue"
// Can be accessed like this
MutableQueue.pollUpTo
```

**Signature**

```ts
export declare const pollUpTo: {
  (n: number): <A>(self: MutableQueue<A>) => Chunk.Chunk<A>
  <A>(self: MutableQueue<A>, n: number): Chunk.Chunk<A>
}
```

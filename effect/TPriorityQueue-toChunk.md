# toChunk

Collects all values into a `Chunk`.

To import and use `toChunk` from the "TPriorityQueue" module:

ts
import \* as TPriorityQueue from "effect/TPriorityQueue"
// Can be accessed like this
TPriorityQueue.toChunk
undefined

**Signature**

```ts
export declare const toChunk: <A>(self: TPriorityQueue<A>) => STM.STM<Chunk.Chunk<A>>
```

# toArray

Collects all values into an array.

To import and use `toArray` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from "effect/TPriorityQueue"
// Can be accessed like this
TPriorityQueue.toArray
```

**Signature**

```ts
export declare const toArray: <A>(self: TPriorityQueue<A>) => STM.STM<never, never, A[]>
```

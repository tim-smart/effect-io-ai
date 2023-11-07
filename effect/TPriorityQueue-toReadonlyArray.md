# toReadonlyArray

Collects all values into an array.

To import and use `toReadonlyArray` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from 'effect/TPriorityQueue'

// Can be accessed like this
TPriorityQueue.toReadonlyArray
```

**Signature**

```ts
export declare const toReadonlyArray: <A>(self: TPriorityQueue<A>) => STM.STM<never, never, readonly A[]>
```

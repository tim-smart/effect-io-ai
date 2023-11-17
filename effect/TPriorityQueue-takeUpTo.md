# takeUpTo

Takes up to the specified maximum number of elements from the queue.

To import and use `takeUpTo` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from "effect/TPriorityQueue"
// Can be accessed like this
TPriorityQueue.takeUpTo
```

**Signature**

```ts
export declare const takeUpTo: {
  (n: number): <A>(self: TPriorityQueue<A>) => STM.STM<never, never, A[]>
  <A>(self: TPriorityQueue<A>, n: number): STM.STM<never, never, A[]>
}
```

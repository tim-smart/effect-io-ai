# offer

Offers the specified value to the queue.

To import and use `offer` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from "effect/TPriorityQueue"
// Can be accessed like this
TPriorityQueue.offer
```

**Signature**

```ts
export declare const offer: {
  <A>(value: A): (self: TPriorityQueue<A>) => STM.STM<never, never, void>
  <A>(self: TPriorityQueue<A>, value: A): STM.STM<never, never, void>
}
```

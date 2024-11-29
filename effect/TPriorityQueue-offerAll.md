# offerAll

Offers all of the elements in the specified collection to the queue.

To import and use `offerAll` from the "TPriorityQueue" module:

ts
import \* as TPriorityQueue from "effect/TPriorityQueue"
// Can be accessed like this
TPriorityQueue.offerAll
undefined

**Signature**

```ts
export declare const offerAll: {
  <A>(values: Iterable<A>): (self: TPriorityQueue<A>) => STM.STM<void>
  <A>(self: TPriorityQueue<A>, values: Iterable<A>): STM.STM<void>
}
```

# removeIf

Removes all elements from the queue matching the specified predicate.

To import and use `removeIf` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from "effect/TPriorityQueue"
// Can be accessed like this
TPriorityQueue.removeIf
```

**Signature**

```ts
export declare const removeIf: {
  <A>(predicate: Predicate<A>): (self: TPriorityQueue<A>) => STM.STM<void>
  <A>(self: TPriorityQueue<A>, predicate: Predicate<A>): STM.STM<void>
}
```

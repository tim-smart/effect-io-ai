# fromIterable

Creates a new `TPriorityQueue` from an iterable collection of values.

To import and use `fromIterable` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from "effect/TPriorityQueue"
// Can be accessed like this
TPriorityQueue.fromIterable
```

**Signature**

```ts
export declare const fromIterable: <A>(
  order: Order.Order<A>
) => (iterable: Iterable<A>) => STM.STM<never, never, TPriorityQueue<A>>
```

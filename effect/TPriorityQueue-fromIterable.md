# fromIterable

Makes a new `TPriorityQueue` initialized with provided iterable.

To import and use `fromIterable` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from 'effect/TPriorityQueue'

// Can be accessed like this
TPriorityQueue.fromIterable
```

**Signature**

```ts
export declare const fromIterable: <A>(
  order: Order.Order<A>
) => (iterable: Iterable<A>) => STM.STM<never, never, TPriorityQueue<A>>
```

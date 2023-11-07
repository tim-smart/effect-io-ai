# make

Makes a new `TPriorityQueue` that is initialized with specified values.

To import and use `make` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from 'effect/TPriorityQueue'

// Can be accessed like this
TPriorityQueue.make
```

**Signature**

```ts
export declare const make: <A>(order: Order.Order<A>) => (...elements: A[]) => STM.STM<never, never, TPriorityQueue<A>>
```

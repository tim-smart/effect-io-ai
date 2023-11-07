# empty

Constructs a new empty `TPriorityQueue` with the specified `Order`.

To import and use `empty` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from 'effect/TPriorityQueue'

// Can be accessed like this
TPriorityQueue.empty
```

**Signature**

```ts
export declare const empty: <A>(order: Order.Order<A>) => STM.STM<never, never, TPriorityQueue<A>>
```

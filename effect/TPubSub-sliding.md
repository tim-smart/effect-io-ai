# sliding

Creates a bounded `TPubSub` with the sliding strategy. The `TPubSub` will add new
messages and drop old messages if the `TPubSub` is at capacity.

For best performance use capacities that are powers of two.

To import and use `sliding` from the "TPubSub" module:

```ts
import * as TPubSub from 'effect/TPubSub'

// Can be accessed like this
TPubSub.sliding
```

**Signature**

```ts
export declare const sliding: <A>(requestedCapacity: number) => STM.STM<never, never, TPubSub<A>>
```

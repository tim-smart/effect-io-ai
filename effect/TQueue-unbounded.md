# unbounded

Creates an unbounded queue.

To import and use `unbounded` from the "TQueue" module:

ts
import \* as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.unbounded
undefined

**Signature**

```ts
export declare const unbounded: <A>() => STM.STM<TQueue<A>>
```

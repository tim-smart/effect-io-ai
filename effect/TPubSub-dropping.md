# dropping

Creates a bounded `TPubSub` with the dropping strategy. The `TPubSub` will drop new
messages if the `TPubSub` is at capacity.

To import and use `dropping` from the "TPubSub" module:

ts
import \* as TPubSub from "effect/TPubSub"
// Can be accessed like this
TPubSub.dropping
undefined

**Signature**

```ts
export declare const dropping: <A>(requestedCapacity: number) => STM.STM<TPubSub<A>>
```

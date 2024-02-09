# bounded

Creates a bounded `TPubSub` with the back pressure strategy. The `TPubSub` will retain
messages until they have been taken by all subscribers, applying back
pressure to publishers if the `TPubSub` is at capacity.

To import and use `bounded` from the "TPubSub" module:

```ts
import * as TPubSub from "effect/TPubSub"
// Can be accessed like this
TPubSub.bounded
```

**Signature**

```ts
export declare const bounded: <A>(requestedCapacity: number) => STM.STM<TPubSub<A>, never, never>
```

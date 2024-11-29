# PodRegistered

Constructs the event that occurs when a new Pod has registered

To import and use `PodRegistered` from the "ShardingEvent" module:

ts
import \* as ShardingEvent from "@effect/cluster/ShardingEvent"
// Can be accessed like this
ShardingEvent.PodRegistered
undefined

**Signature**

```ts
export declare function PodRegistered(pod: PodAddress.PodAddress): PodRegistered
```

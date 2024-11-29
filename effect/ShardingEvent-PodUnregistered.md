# PodUnregistered

Constructs the event that occurs when a pod has unregistered

To import and use `PodUnregistered` from the "ShardingEvent" module:

ts
import \* as ShardingEvent from "@effect/cluster/ShardingEvent"
// Can be accessed like this
ShardingEvent.PodUnregistered
undefined

**Signature**

```ts
export declare function PodUnregistered(pod: PodAddress.PodAddress): PodUnregistered
```

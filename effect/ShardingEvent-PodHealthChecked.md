# PodHealthChecked

Constructs the event that occurs when the health of a Pod has been checked

To import and use `PodHealthChecked` from the "ShardingEvent" module:

```ts
import * as ShardingEvent from "@effect/cluster/ShardingEvent"
// Can be accessed like this
ShardingEvent.PodHealthChecked
```

**Signature**

```ts
export declare function PodHealthChecked(pod: PodAddress.PodAddress): PodHealthChecked
```

# getPods

Get the list of pods currently registered to the Shard Manager

To import and use `getPods` from the "Sharding" module:

ts
import \* as Sharding from "@effect/cluster/Sharding"
// Can be accessed like this
Sharding.getPods
undefined

**Signature**

```ts
export declare const getPods: Effect.Effect<HashSet.HashSet<PodAddress.PodAddress>, never, Sharding>
```

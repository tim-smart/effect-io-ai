# unregister

Notify the shard manager that shards must be unassigned from this pod.

To import and use `unregister` from the "Sharding" module:

ts
import \* as Sharding from "@effect/cluster/Sharding"
// Can be accessed like this
Sharding.unregister
undefined

**Signature**

```ts
export declare const unregister: Effect.Effect<void, never, Sharding>
```

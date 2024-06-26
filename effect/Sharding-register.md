# register

Notify the shard manager that shards can now be assigned to this pod.

To import and use `register` from the "Sharding" module:

```ts
import * as Sharding from "@effect/cluster/Sharding"
// Can be accessed like this
Sharding.register
```

**Signature**

```ts
export declare const register: Effect.Effect<void, never, Sharding>
```

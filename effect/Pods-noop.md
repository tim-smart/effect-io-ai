# noop

A layer that creates a service that does nothing when called.
Useful for testing ShardManager or when using Sharding.local.

To import and use `noop` from the "Pods" module:

ts
import \* as Pods from "@effect/cluster/Pods"
// Can be accessed like this
Pods.noop
undefined

**Signature**

```ts
export declare const noop: Layer.Layer<Pods, never, never>
```

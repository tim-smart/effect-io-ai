# local

A layer that pings the pod directly to check if it's alive.
This is useful for developing and testing but not reliable in production.

To import and use `local` from the "PodsHealth" module:

ts
import \* as PodsHealth from "@effect/cluster/PodsHealth"
// Can be accessed like this
PodsHealth.local
undefined

**Signature**

```ts
export declare const local: Layer.Layer<PodsHealth, never, Pods.Pods>
```

# noop

A layer that considers pods as always alive.
This is useful for testing only.

To import and use `noop` from the "PodsHealth" module:

ts
import \* as PodsHealth from "@effect/cluster/PodsHealth"
// Can be accessed like this
PodsHealth.noop
undefined

**Signature**

```ts
export declare const noop: Layer.Layer<PodsHealth, never, never>
```

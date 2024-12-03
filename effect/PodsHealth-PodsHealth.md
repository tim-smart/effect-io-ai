# PodsHealth

An interface to check a pod's health.
This is used when a pod is unresponsive, to check if it should be unassigned all its shards or not.
If the pod is alive, shards will not be unassigned because the pods might still be processing messages and might be responsive again.
If the pod is not alive, shards can be safely reassigned somewhere else.
A typical implementation for this is using k8s to check if the pod still exists.

To import and use `PodsHealth` from the "PodsHealth" module:

```ts
import * as PodsHealth from "@effect/cluster/PodsHealth"
// Can be accessed like this
PodsHealth.PodsHealth
```

## PodsHealth

An interface to check a pod's health.
This is used when a pod is unresponsive, to check if it should be unassigned all its shards or not.
If the pod is alive, shards will not be unassigned because the pods might still be processing messages and might be responsive again.
If the pod is not alive, shards can be safely reassigned somewhere else.
A typical implementation for this is using k8s to check if the pod still exists.

**Signature**

```ts
export interface PodsHealth {
  /**
   * @since 1.0.0
   */
  readonly [PodsHealthTypeId]: PodsHealthTypeId

  /**
   * Check if a pod is still alive.
   * @since 1.0.0
   */
  readonly isAlive: (podAddress: PodAddress.PodAddress) => Effect.Effect<boolean>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/PodsHealth.ts#L33)

Since v1.0.0
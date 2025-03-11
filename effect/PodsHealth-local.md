## local

A layer that pings the pod directly to check if it's alive.
This is useful for developing and testing but not reliable in production.

**Signature**

```ts
declare const local: Layer.Layer<PodsHealth, never, Pods.Pods>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/PodsHealth.ts#L74)

Since v1.0.0
Package: `@effect/cluster`<br />
Module: `Pods`<br />

## Pods.noop

A layer that creates a service that does nothing when called.
Useful for testing ShardManager or when using Sharding.local.

**Signature**

```ts
declare const noop: Layer.Layer<Pods, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Pods.ts#L100)

Since v1.0.0
Package: `effect`<br />
Module: `PersistedQueue`<br />

## PersistedQueue.layerStoreRedis

Provides a Redis-backed `PersistedQueueStore` using `makeStoreRedis`.

**Signature**

```ts
declare const layerStoreRedis: (options?: { readonly prefix?: string | undefined; readonly pollInterval?: Duration.Input | undefined; readonly lockRefreshInterval?: Duration.Input | undefined; readonly lockExpiration?: Duration.Input | undefined; } | undefined) => Layer.Layer<PersistedQueueStore, never, Redis.Redis>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PersistedQueue.ts#L726)

Since v4.0.0
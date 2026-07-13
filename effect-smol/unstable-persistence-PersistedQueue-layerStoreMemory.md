Package: `effect`<br />
Module: `PersistedQueue`<br />

## PersistedQueue.layerStoreMemory

Provides an in-memory `PersistedQueueStore`.

**Details**

The store is process-local and volatile; failed takes are requeued until the
configured maximum attempts is reached.

**Signature**

```ts
declare const layerStoreMemory: Layer.Layer<PersistedQueueStore, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PersistedQueue.ts#L289)

Since v4.0.0
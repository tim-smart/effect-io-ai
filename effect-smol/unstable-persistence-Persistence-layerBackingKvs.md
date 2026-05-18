Package: `effect`<br />
Module: `Persistence`<br />

## Persistence.layerBackingKvs

Provides `BackingPersistence` using a `KeyValueStore`.

Each store id becomes a key prefix, and values are stored as JSON with
optional expiration timestamps.

**Signature**

```ts
declare const layerBackingKvs: Layer.Layer<BackingPersistence, never, KeyValueStore.KeyValueStore>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Persistence.ts#L921)

Since v4.0.0
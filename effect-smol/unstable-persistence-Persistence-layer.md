Package: `effect`<br />
Module: `Persistence`<br />

## Persistence.layer

Provides `Persistence` from `BackingPersistence`.

The layer serializes and deserializes `Persistable` exits, applies
per-entry TTLs, and skips writes whose TTL is zero or negative.

**Signature**

```ts
declare const layer: Layer.Layer<Persistence, never, BackingPersistence>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Persistence.ts#L156)

Since v4.0.0
Package: `effect`<br />
Module: `Persistence`<br />

## Persistence.layerBackingRedis

Provides Redis-backed persistence.

**Details**

Each store id is used as a key prefix, values are JSON-encoded, and finite
TTLs are stored with Redis expiration.

**Signature**

```ts
declare const layerBackingRedis: Layer.Layer<BackingPersistence, never, Redis.Redis>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Persistence.ts#L772)

Since v4.0.0
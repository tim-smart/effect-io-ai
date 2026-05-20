Package: `effect`<br />
Module: `Persistence`<br />

## Persistence.layerBackingMemory

Provides an in-memory `BackingPersistence` grouped by store id.

**Details**

Entries are process-local and expire according to their stored TTL.

**Signature**

```ts
declare const layerBackingMemory: Layer.Layer<BackingPersistence, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Persistence.ts#L258)

Since v4.0.0
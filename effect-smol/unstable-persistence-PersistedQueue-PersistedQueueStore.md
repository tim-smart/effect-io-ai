Package: `effect`<br />
Module: `PersistedQueue`<br />

## PersistedQueue.PersistedQueueStore

Low-level backing store service used by `PersistedQueue`.

The store persists offered elements and returns taken elements in a scope so
the finalizer can complete or retry them based on the processing exit.

**Signature**

```ts
declare class PersistedQueueStore
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PersistedQueue.ts#L259)

Since v4.0.0
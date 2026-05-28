Package: `effect`<br />
Module: `PersistedQueue`<br />

## PersistedQueue.PersistedQueueStore

Defines the low-level backing store service used by `PersistedQueue`.

**When to use**

Use to provide the persistence backend that stores queued elements, scoped
takes, retry attempts, and acknowledgements.

**Details**

The store persists offered elements and returns taken elements in a scope so
the finalizer can complete or retry them based on the processing exit.

**Signature**

```ts
declare class PersistedQueueStore
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PersistedQueue.ts#L273)

Since v4.0.0
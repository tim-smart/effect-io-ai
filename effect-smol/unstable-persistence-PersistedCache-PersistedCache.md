Package: `effect`<br />
Module: `PersistedCache`<br />

## PersistedCache.PersistedCache

Cache that combines an in-memory `Cache` with a persisted backing store.

**Signature**

```ts
export interface PersistedCache<K extends Persistable.Any, out R = never> {
  readonly [TypeId]: typeof TypeId
  readonly inMemory: Cache.Cache<
    K,
    Persistable.Success<K>,
    Persistable.Error<K> | Persistence.PersistenceError | Schema.SchemaError,
    Persistable.Services<K> | R
  >
  readonly get: (key: K) => Effect.Effect<
    Persistable.Success<K>,
    Persistable.Error<K> | Persistence.PersistenceError | Schema.SchemaError,
    Persistable.Services<K> | R
  >
  readonly invalidate: (key: K) => Effect.Effect<void, Persistence.PersistenceError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PersistedCache.ts#L29)

Since v4.0.0
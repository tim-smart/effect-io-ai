Package: `effect`<br />
Module: `PersistedCache`<br />

## PersistedCache.make

Creates a persisted cache for `Persistable` request keys.

**Details**

The cache reads persisted exits before running the lookup, stores lookup
exits with the configured persistent TTL, and also keeps a scoped in-memory
cache with its own capacity and TTL.

**Signature**

```ts
declare const make: <K extends Persistable.Any, R = never, ServiceMode extends "lookup" | "construction" = never>(lookup: (key: K) => Effect.Effect<Persistable.Success<K>, Persistable.Error<K>, R>, options: { readonly storeId: string; readonly timeToLive: Persistable.TimeToLiveFn<K>; readonly inMemoryCapacity?: number | undefined; readonly inMemoryTTL?: Persistable.TimeToLiveFn<K> | undefined; readonly requireServicesAt?: ServiceMode | undefined; }) => Effect.Effect<PersistedCache<K, "lookup" extends ServiceMode ? R : never>, never, ("lookup" extends ServiceMode ? never : R) | Persistence.Persistence | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PersistedCache.ts#L57)

Since v4.0.0
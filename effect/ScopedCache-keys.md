Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.keys

Retrieves all active keys from the cache, automatically filtering out expired entries.

**When to use**

Use to inspect currently cached unexpired keys without running cache lookups.

**Gotchas**

Expired entries are removed and their scopes are closed while filtering.

**See**

- `entries` for retrieving successful cached key-value pairs
- `values` for retrieving only successfully cached values

**Signature**

```ts
declare const keys: <Key, A, E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<Array<Key>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ScopedCache.ts#L739)

Since v4.0.0
Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.values

Retrieves all successfully cached values from the cache, excluding failed
lookups and expired entries.

**When to use**

Use to inspect currently successful cached values without running cache
lookups.

**Gotchas**

Expired entries are removed and their scopes are closed while filtering.

**See**

- `entries` for retrieving successful cached key-value pairs
- `keys` for retrieving only cached keys

**Signature**

```ts
declare const values: <Key, A, E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<Array<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L791)

Since v4.0.0
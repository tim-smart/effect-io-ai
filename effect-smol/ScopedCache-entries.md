Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.entries

Retrieves all key-value pairs from the cache as an array. This function
only returns entries with successfully resolved values, filtering out any
failed lookups or expired entries.

**When to use**

Use to inspect the currently successful cached key-value pairs without
running cache lookups.

**Gotchas**

Expired entries are removed and their scopes are closed while filtering.

**See**

- `keys` for retrieving only cached keys
- `values` for retrieving only cached values

**Signature**

```ts
declare const entries: <Key, A, E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<Array<[Key, A]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L814)

Since v4.0.0
Package: `effect`<br />
Module: `Cache`<br />

## Cache.entries

Retrieves all key-value pairs from the cache as an iterable. This function
only returns entries with successfully resolved values, filtering out any
failed lookups or expired entries.

**Gotchas**

Expired entries are removed from the cache while `entries` filters them out.

**See**

- `keys` for retrieving only cached keys
- `values` for retrieving only cached values

**Signature**

```ts
declare const entries: <Key, A, E, R>(self: Cache<Key, A, E, R>) => Effect.Effect<Iterable<[Key, A]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L1282)

Since v4.0.0
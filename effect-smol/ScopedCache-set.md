Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.set

Stores a successful value for a key without running the lookup function.

**When to use**

Use to seed or overwrite a scoped cache entry with an already available
successful value.

**Details**

This replaces and closes any existing entry scope for the key, applies the
cache's TTL using a successful exit for the value, and may evict older
entries if the cache capacity is exceeded.

**See**

- `get` for reading or computing a cached value
- `refresh` for replacing an entry by running the lookup function

**Signature**

```ts
declare const set: { <Key, A>(key: Key, value: A): <E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<void>; <Key, A, E, R>(self: ScopedCache<Key, A, E, R>, key: Key, value: A): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L462)

Since v4.0.0
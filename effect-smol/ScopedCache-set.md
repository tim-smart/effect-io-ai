Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.set

Stores a successful value for a key without running the lookup function.

**Details**

This replaces and closes any existing entry scope for the key, applies the
cache's TTL using a successful exit for the value, and may evict older
entries if the cache capacity is exceeded.

**Signature**

```ts
declare const set: { <Key, A>(key: Key, value: A): <E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<void>; <Key, A, E, R>(self: ScopedCache<Key, A, E, R>, key: Key, value: A): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L390)

Since v4.0.0
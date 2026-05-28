Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.has

Checks whether the cache contains an entry for the specified key.

**When to use**

Use to test whether an unexpired entry exists for a key without running the
cache lookup.

**Details**

This does not start lookups and does not refresh access order. Expired
entries are treated as absent and their scopes are closed while checking. If
the cache is closed, the effect is interrupted.

**See**

- `getOption` for reading an existing cached entry
- `get` for running the lookup on missing or expired keys

**Signature**

```ts
declare const has: { <Key, A>(key: Key): <E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<boolean>; <Key, A, E, R>(self: ScopedCache<Key, A, E, R>, key: Key): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L514)

Since v4.0.0
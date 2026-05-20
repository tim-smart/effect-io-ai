Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.get

Gets the value for a key, running the cache lookup when no unexpired entry is
present.

**Details**

Concurrent `get` calls for the same key share the same in-flight lookup.
Successful and failed lookup exits are cached according to the configured
TTL. If the cache is closed, the effect is interrupted.

**Signature**

```ts
declare const get: { <Key, A>(key: Key): <E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<A, E, R>; <Key, A, E, R>(self: ScopedCache<Key, A, E, R>, key: Key): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L226)

Since v4.0.0
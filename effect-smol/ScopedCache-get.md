Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.get

Gets the value for a key, running the cache lookup when no unexpired entry is
present.

**When to use**

Use to retrieve a scoped cached value by key when a missing or expired entry
should run the cache lookup and share the in-flight lookup with concurrent
callers.

**Details**

Concurrent `get` calls for the same key share the same in-flight lookup.
Successful and failed lookup exits are cached according to the configured
TTL. If the cache is closed, the effect is interrupted.

**See**

- `getOption` for reading only when an unexpired entry is already cached
- `getSuccess` for inspecting an already-completed successful entry
- `refresh` for forcing a new lookup

**Signature**

```ts
declare const get: { <Key, A>(key: Key): <E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<A, E, R>; <Key, A, E, R>(self: ScopedCache<Key, A, E, R>, key: Key): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L269)

Since v4.0.0
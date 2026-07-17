Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.invalidate

Removes the entry associated with a key and closes its entry scope.

**When to use**

Use to remove a single key from a scoped cache and release any resources owned
by that entry before a later lookup computes it again.

**Details**

If the key is absent, this is a no-op.

**Gotchas**

If the cache is closed, the effect is interrupted.

**See**

- `refresh` for replacing a key by running a new lookup immediately
- `invalidateWhen` for invalidating only when a cached value matches a predicate
- `invalidateAll` for removing every cached entry

**Signature**

```ts
declare const invalidate: { <Key, A>(key: Key): <E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<void>; <Key, A, E, R>(self: ScopedCache<Key, A, E, R>, key: Key): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ScopedCache.ts#L533)

Since v4.0.0
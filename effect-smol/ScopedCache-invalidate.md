Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.invalidate

Removes the entry associated with a key and closes its entry scope.

**Details**

If the key is absent, this is a no-op. If the cache is closed, the effect is
interrupted.

**Signature**

```ts
declare const invalidate: { <Key, A>(key: Key): <E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<void>; <Key, A, E, R>(self: ScopedCache<Key, A, E, R>, key: Key): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L450)

Since v4.0.0
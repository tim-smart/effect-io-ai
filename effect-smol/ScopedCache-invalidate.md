Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.invalidate

Invalidates the entry associated with the specified key in the cache.

**Signature**

```ts
declare const invalidate: { <Key, A>(key: Key): <E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<void>; <Key, A, E, R>(self: ScopedCache<Key, A, E, R>, key: Key): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L356)

Since v4.0.0
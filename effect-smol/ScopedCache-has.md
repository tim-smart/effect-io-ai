Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.has

Checks if the cache contains an entry for the specified key.

**Signature**

```ts
declare const has: { <Key, A>(key: Key): <E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<boolean>; <Key, A, E, R>(self: ScopedCache<Key, A, E, R>, key: Key): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L339)

Since v4.0.0
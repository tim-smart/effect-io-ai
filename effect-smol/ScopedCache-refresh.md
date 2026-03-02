Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.refresh

Forces a refresh of the value associated with the specified key in the cache.

It will always invoke the lookup function to construct a new value,
overwriting any existing value for that key.

**Signature**

```ts
declare const refresh: { <Key, A>(key: Key): <E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<A, E, R>; <Key, A, E, R>(self: ScopedCache<Key, A, E, R>, key: Key): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L419)

Since v4.0.0
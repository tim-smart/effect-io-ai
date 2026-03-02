Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.values

Retrieves all successfully cached values from the cache, excluding failed
lookups and expired entries.

**Signature**

```ts
declare const values: <Key, A, E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<Array<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L534)

Since v4.0.0
Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.keys

Retrieves all active keys from the cache, automatically filtering out expired entries.

**Signature**

```ts
declare const keys: <Key, A, E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<Array<Key>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L509)

Since v4.0.0